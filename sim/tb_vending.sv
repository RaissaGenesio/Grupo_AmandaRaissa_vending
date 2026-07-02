module tb_vending;

  import vending_pkg::*;

  logic [1:0] coin_in;
  logic [1:0] sel_item;
  logic       confirm;
  logic       cancel;
  logic       clk;
  logic       rst;

  logic       dispense;
  logic [7:0] change_out;
  logic       error;
  logic [7:0] display;
  logic [2:0] state_out;

  integer pass_count;
  integer fail_count;
  integer i;

  logic [1:0] coins_one_dollar [];
  logic [1:0] coins_quarter [];

  vending_top dut (
    .coin_in   (coin_in),
    .sel_item  (sel_item),
    .confirm   (confirm),
    .cancel    (cancel),
    .clk       (clk),
    .rst       (rst),
    .dispense  (dispense),
    .change_out(change_out),
    .error     (error),
    .display   (display),
    .state_out (state_out)
  );

  initial begin
    clk = 1'b0;
  end

  always #5 clk = ~clk;

  initial begin
    #5000;
    $display("FAIL: timeout global da simulacao");
    $fatal(1);
  end

  task automatic check(
    input logic [7:0] expected,
    input logic [7:0] actual,
    input string      label
  );
    begin
      if (actual === expected) begin
        $display("PASS: %s | esperado=%0d obtido=%0d",
                 label, expected, actual);
        pass_count = pass_count + 1;
      end
      else begin
        $display("FAIL: %s | esperado=%0d obtido=%0d",
                 label, expected, actual);
        fail_count = fail_count + 1;
      end
    end
  endtask

  task automatic apply_coin(input logic [1:0] value);
    begin
      @(negedge clk);
      coin_in = value;

      @(negedge clk);
      coin_in = 2'b00;
    end
  endtask

  task automatic pulse_confirm;
    begin
      @(negedge clk);
      confirm = 1'b1;

      @(negedge clk);
      confirm = 1'b0;
    end
  endtask

  task automatic pulse_cancel;
    begin
      @(negedge clk);
      cancel = 1'b1;

      @(negedge clk);
      cancel = 1'b0;
    end
  endtask

  task automatic buy_item(
    input logic [1:0] item,
    input logic [1:0] coins[]
  );
    integer index;
    begin
      sel_item = item;

      for (index = 0; index < coins.size(); index = index + 1) begin
        apply_coin(coins[index]);
      end

      pulse_confirm();
    end
  endtask

  task automatic wait_for_state(
    input logic [2:0] expected_state,
    input integer     max_cycles,
    input string      label
  );
    integer cycle;
    bit found;
    begin
      found = 1'b0;

      for (cycle = 0; cycle < max_cycles; cycle = cycle + 1) begin
        @(negedge clk);

        if (state_out === expected_state) begin
          found = 1'b1;
          cycle = max_cycles;
        end
      end

      if (found) begin
        $display("PASS: %s | estado=%03b", label, state_out);
        pass_count = pass_count + 1;
      end
      else begin
        $display(
          "FAIL: %s | estado esperado=%03b estado atual=%03b",
          label,
          expected_state,
          state_out
        );
        fail_count = fail_count + 1;
      end
    end
  endtask

  initial begin
    $dumpfile("vending.vcd");
    $dumpvars(0, tb_vending);

    coin_in    = 2'b00;
    sel_item   = 2'b00;
    confirm    = 1'b0;
    cancel     = 1'b0;
    rst        = 1'b1;
    pass_count = 0;
    fail_count = 0;

    coins_one_dollar = new[1];
    coins_one_dollar[0] = 2'b11;

    coins_quarter = new[1];
    coins_quarter[0] = 2'b01;

    repeat (2) @(posedge clk);

    @(negedge clk);
    rst = 1'b0;

    $display("");
    $display("============================================");
    $display("CENARIO 1 - COMPRA COM TROCO");
    $display("============================================");

    buy_item(2'd0, coins_one_dollar);

    wait_for_state(DISPENSE, 10, "FSM chegou ao estado DISPENSE");
    check(8'd1, {7'd0, dispense}, "dispense ativo");

    @(negedge clk);
    check(8'd0, {7'd0, dispense}, "dispense dura somente um ciclo");

    wait_for_state(IDLE, 5, "FSM retornou ao estado IDLE");
    check(8'd75, change_out, "troco da compra do cafe");
    check(8'd0, display, "credito zerado apos a compra");

    $display("");
    $display("============================================");
    $display("CENARIO 2 - CREDITO INSUFICIENTE");
    $display("============================================");

    buy_item(2'd3, coins_quarter);

    wait_for_state(ERROR, 10, "FSM chegou ao estado ERROR");
    check(8'd1, {7'd0, error}, "sinal error ativo");

    pulse_cancel();

    wait_for_state(IDLE, 5, "cancelamento retirou FSM do ERROR");
    check(8'd25, change_out, "credito insuficiente devolvido");
    check(8'd0, display, "credito zerado apos cancelamento");

    $display("");
    $display("============================================");
    $display("CENARIO 3 - CANCELAMENTO DE R$2,00");
    $display("============================================");

    apply_coin(2'b11);
    apply_coin(2'b11);

    check(8'd200, display, "credito acumulado antes do cancelamento");

    pulse_cancel();

    wait_for_state(IDLE, 5, "FSM voltou para IDLE apos cancelamento");
    check(8'd200, change_out, "devolucao de R$2,00");
    check(8'd0, display, "credito zerado pelo cancelamento");

    $display("");
    $display("============================================");
    $display("CENARIO 4 - ESGOTAMENTO DO ESTOQUE DO CAFE");
    $display("============================================");

    /*
     * O primeiro cafe ja foi comprado no cenario 1.
     * Portanto, sao realizadas mais quatro compras com sucesso.
     * Depois disso, a sexta tentativa total deve falhar.
     */

    for (i = 0; i < 4; i = i + 1) begin
      buy_item(2'd0, coins_quarter);

      wait_for_state(
        DISPENSE,
        10,
        "compra de cafe antes do esgotamento"
      );

      check(
        8'd1,
        {7'd0, dispense},
        "dispense nas compras com estoque"
      );

      wait_for_state(
        IDLE,
        5,
        "retorno ao IDLE apos compra de cafe"
      );
    end

    buy_item(2'd0, coins_quarter);

    wait_for_state(ERROR, 10, "sexta tentativa chegou ao ERROR");
    check(8'd1, {7'd0, error}, "erro por estoque zerado");
    check(8'd0, {7'd0, dispense}, "produto nao liberado sem estoque");

    pulse_cancel();
    wait_for_state(IDLE, 5, "FSM final retornou ao IDLE");

    $display("");
    $display("============================================");
    $display("RESUMO DA SIMULACAO");
    $display("PASS = %0d", pass_count);
    $display("FAIL = %0d", fail_count);
    $display("============================================");

    if (fail_count == 0) begin
      $display("RESULTADO FINAL: TODOS OS TESTES PASSARAM");
    end
    else begin
      $display("RESULTADO FINAL: EXISTEM TESTES COM FALHA");
    end

    $finish;
  end

endmodule

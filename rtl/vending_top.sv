module vending_top (
  input  logic [1:0] coin_in,
  input  logic [1:0] sel_item,
  input  logic       confirm,
  input  logic       cancel,
  input  logic       clk,
  input  logic       rst,

  output logic       dispense,
  output logic [7:0] change_out,
  output logic       error,
  output logic [7:0] display,
  output logic [2:0] state_out
);

  logic [7:0] coin_value;
  logic [7:0] credit;
  logic [7:0] price;
  logic [7:0] stock;
  logic [7:0] change;

  logic [1:0] selected_item;

  logic can_sell;
  logic read_valid;

  logic credit_load;
  logic credit_clear;
  logic mem_read;
  logic mem_write;
  logic change_load;
  logic refund_load;

  always_comb begin
    case (coin_in)
      2'b00: coin_value = 8'd0;
      2'b01: coin_value = 8'd25;
      2'b10: coin_value = 8'd50;
      2'b11: coin_value = 8'd100;
      default: coin_value = 8'd0;
    endcase
  end

  always_ff @(posedge clk) begin
    if (rst) begin
      selected_item <= 2'b00;
    end
    else if (confirm) begin
      selected_item <= sel_item;
    end
  end

  always_ff @(posedge clk) begin
    if (rst) begin
      change_out <= 8'd0;
    end
    else if (refund_load) begin
      change_out <= credit;
    end
    else if (change_load) begin
      change_out <= change;
    end
  end

  assign display = credit;

  credit_reg u_credit_reg (
    .clk          (clk),
    .rst          (rst),
    .credit_load  (credit_load),
    .credit_clear (credit_clear),
    .coin_value   (coin_value),
    .credit       (credit)
  );

  vending_memory u_memory (
    .clk        (clk),
    .rst        (rst),
    .mem_read   (mem_read),
    .mem_write  (mem_write),
    .addr       (selected_item),
    .price      (price),
    .stock      (stock),
    .read_valid (read_valid)
  );

  comparator u_comparator (
    .credit   (credit),
    .price    (price),
    .stock    (stock),
    .can_sell (can_sell)
  );

  subtractor u_subtractor (
    .credit (credit),
    .price  (price),
    .change (change)
  );

  control_unit u_control_unit (
    .clk          (clk),
    .rst          (rst),
    .coin_in      (coin_in),
    .confirm      (confirm),
    .cancel       (cancel),
    .can_sell     (can_sell),
    .read_valid   (read_valid),
    .credit_load  (credit_load),
    .credit_clear (credit_clear),
    .mem_read     (mem_read),
    .mem_write    (mem_write),
    .dispense     (dispense),
    .error        (error),
    .change_load  (change_load),
    .refund_load  (refund_load),
    .state_out    (state_out)
  );

endmodule

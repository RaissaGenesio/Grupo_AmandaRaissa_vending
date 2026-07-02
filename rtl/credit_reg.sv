module credit_reg (
  input  logic       clk,
  input  logic       rst,
  input  logic       credit_load,
  input  logic       credit_clear,
  input  logic [7:0] coin_value,
  output logic [7:0] credit
);

  always_ff @(posedge clk) begin
    if (rst) begin
      credit <= 8'd0;
    end
    else if (credit_clear) begin
      credit <= 8'd0;
    end
    else if (credit_load) begin
      credit <= credit + coin_value;
    end
  end

endmodule

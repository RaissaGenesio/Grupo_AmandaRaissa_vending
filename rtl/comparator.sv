module comparator (
  input  logic [7:0] credit,
  input  logic [7:0] price,
  input  logic [7:0] stock,
  output logic       can_sell
);

  always_comb begin
    can_sell = (credit >= price) && (stock > 8'd0);
  end

endmodule

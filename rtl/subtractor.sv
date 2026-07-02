module subtractor (
  input  logic [7:0] credit,
  input  logic [7:0] price,
  output logic [7:0] change
);

  always_comb begin
    change = credit - price;
  end

endmodule

module vending_memory (
  input  logic       clk,
  input  logic       rst,
  input  logic       mem_read,
  input  logic       mem_write,
  input  logic [1:0] addr,

  output logic [7:0] price,
  output logic [7:0] stock,
  output logic       read_valid
);

  logic [15:0] mem [0:3];

  initial begin
    mem[0] = {8'd25,  8'd5};
    mem[1] = {8'd50,  8'd5};
    mem[2] = {8'd75,  8'd3};
    mem[3] = {8'd100, 8'd2};
  end

  always @(posedge clk) begin
    if (rst) begin
      price      <= 8'd0;
      stock      <= 8'd0;
      read_valid <= 1'b0;
    end
    else begin
      read_valid <= mem_read;

      if (mem_read) begin
        price <= mem[addr][15:8];
        stock <= mem[addr][7:0];
      end

      if (mem_write && (mem[addr][7:0] > 8'd0)) begin
        mem[addr][7:0] <= mem[addr][7:0] - 8'd1;
      end
    end
  end

endmodule

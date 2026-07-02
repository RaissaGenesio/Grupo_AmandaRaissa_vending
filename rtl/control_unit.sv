module control_unit (
  input  logic       clk,
  input  logic       rst,
  input  logic [1:0] coin_in,
  input  logic       confirm,
  input  logic       cancel,
  input  logic       can_sell,
  input  logic       read_valid,

  output logic       credit_load,
  output logic       credit_clear,
  output logic       mem_read,
  output logic       mem_write,
  output logic       dispense,
  output logic       error,
  output logic       change_load,
  output logic       refund_load,
  output logic [2:0] state_out
);

  import vending_pkg::*;

  state_t current_state;
  state_t next_state;

  always_ff @(posedge clk) begin
    if (rst) begin
      current_state <= IDLE;
    end
    else begin
      current_state <= next_state;
    end
  end

  always_comb begin
    next_state  = current_state;

    credit_load  = 1'b0;
    credit_clear = 1'b0;
    mem_read     = 1'b0;
    mem_write    = 1'b0;
    dispense     = 1'b0;
    error        = 1'b0;
    change_load  = 1'b0;
    refund_load  = 1'b0;

    if (cancel) begin
      next_state   = IDLE;
      credit_clear = 1'b1;
      refund_load  = 1'b1;
    end
    else begin
      case (current_state)

        IDLE: begin
          if (coin_in != 2'b00) begin
            credit_load = 1'b1;
            next_state  = COLLECT;
          end
        end

        COLLECT: begin
          if (coin_in != 2'b00) begin
            credit_load = 1'b1;
          end

          if (confirm) begin
            next_state = CHECK;
          end
        end

        CHECK: begin
          if (!read_valid) begin
            mem_read = 1'b1;
          end
          else if (can_sell) begin
            next_state = DISPENSE;
          end
          else begin
            next_state = ERROR;
          end
        end

        DISPENSE: begin
          dispense  = 1'b1;
          mem_write = 1'b1;
          next_state = CHANGE;
        end

        CHANGE: begin
          change_load  = 1'b1;
          credit_clear = 1'b1;
          next_state   = IDLE;
        end

        ERROR: begin
          error      = 1'b1;
          next_state = ERROR;
        end

        default: begin
          next_state   = IDLE;
          credit_clear = 1'b1;
        end

      endcase
    end
  end

  assign state_out = current_state;

endmodule

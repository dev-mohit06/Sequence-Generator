/**
 * @module sequence_generator
 * @author Mohit Paddhariya
 * @date 2024-10-23
 * 
 * @description 
 * This module generates a 3-bit sequence output based on a simple state machine. 
 * The state transitions are controlled by a clock signal and can be reset asynchronously. 
 * The sequence generated cycles through four predefined states, outputting specific 
 * 3-bit values for each state.
 * 
 * @parameters 
 * - clk: Input clock signal used to trigger state transitions.
 * - reset: Input signal to reset the state machine to the initial state.
 * 
 * @returns 
 * - seq_out: 3-bit output signal representing the current state in the sequence.
 * 
 * @states
 * - S0: 3'b101
 * - S1: 3'b110
 * - S2: 3'b011
 * - S3: 3'b001
 */
 
module sequence_generator(
    input clk,
    input reset,
    output reg [2:0] seq_out
);
    reg [1:0] state;
    parameter S0 = 3'b101, S1 = 3'b110, S2 = 3'b011, S3 = 3'b001;

    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= 2'b00;
        else
            state <= state + 1;
    end

    always @(state) begin
        case(state)
            2'b00: seq_out = S0;
            2'b01: seq_out = S1;
            2'b10: seq_out = S2;
            2'b11: seq_out = S3;
            default: seq_out = S0;
        endcase
    end
endmodule
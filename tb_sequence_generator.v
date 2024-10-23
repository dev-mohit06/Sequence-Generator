/**
 * @module tb_sequence_generator
 * @author Mohit Paddhariya
 * @date 2024-10-23
 * 
 * @description 
 * This is a testbench for the sequence_generator module. It simulates the clock and reset 
 * signals to verify the functionality of the sequence generator. The testbench includes 
 * a clock generation process and initializes the reset signal to check the sequence output.
 * 
 * @parameters 
 * - clk: Clock signal that drives the sequence generator.
 * - reset: Reset signal to initialize the state machine.
 * - seq_out: 3-bit output from the sequence generator.
 * 
 * @returns 
 * - This testbench does not have a direct return value; it generates a VCD file for waveform 
 *   analysis to visualize the output sequences during simulation.
 * 
 * @test_cases
 * - Reset the state machine and verify the output sequence over time.
 */
module tb_sequence_generator;
    reg clk;
    reg reset;
    wire [2:0] seq_out;

    sequence_generator uut (.clk(clk), .reset(reset), .seq_out(seq_out));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("sequence_generator.vcd");
        $dumpvars(0, tb_sequence_generator);
        reset = 1; #10; reset = 0;
        #100;
        $finish;
    end
endmodule
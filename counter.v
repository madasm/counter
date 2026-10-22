`timescale 1ns/1ps
module tb_counter;
    reg clk = 0;
    reg rst_n = 0;
    reg en = 0;
    wire [3:0] count;

    counter dut (.clk(clk), .rst_n(rst_n), .en(en), .count(count));

    always #5 clk = ~clk;

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_counter);
        #12 rst_n = 1;
        #10 en = 1;
        #200 en = 0;
        #30 $finish;
    end

    initial $monitor("t=%0t rst_n=%b en=%b count=%d", $time, rst_n, en, count);
endmodule

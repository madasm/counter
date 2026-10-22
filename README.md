# 4-bit Counter

A 4-bit counter with enable and active-low asynchronous reset, plus a testbench.

## Run

    iverilog -g2012 -o sim counter.v tb_counter.v
    vvp sim
    
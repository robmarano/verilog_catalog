///////////////////////////////////////////////////////////////////////////////
//
// Module: tb_and2
//
// Testbench for and2
//
// module: tb_and2
// hdl: SystemVerilog
//
// author: Prof. Rob Marano <rob@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////
`timescale 1ns/100ps

`include "and2.sv"

module tb_and2;
    //
    // ---------------- DECLARATIONS OF DATA TYPES ----------------
    //
    //inputs are reg for test bench - or use logic
    reg X1, X2; // In SystemVerilog reg -> logic
    //outputs are wire for test bench - or use logic
    wire Z1;    // In SystemVerilog wire -> logic

    //
    // ---------------- INITIALIZE TEST BENCH ----------------
    //
    initial begin
        $dumpfile("tb_and2.vcd"); // for Makefile, make dump file same as module name
        $dumpvars(0, dut);
    end

    /*
    * display variables
    */
    initial begin
    $monitor ("X1 = %b, X2 = %b, Z1 = %b", X1, X2, Z1);
    end

    //
    // ---------------- APPLY INPUT VECTORS ----------------
    //
    initial begin
    #0
        X1 = 1'b0;
        X2 = 1'b0;
    #10
        X1 = 1'b0;
        X2 = 1'b1;
    #10
        X1 = 1'b1;
        X2 = 1'b0;
    #10
        X1 = 1'b1;
        X2 = 1'b1;
    #10
        $finish;
    end

    //
    // ---------------- INSTANTIATE UNIT UNDER TEST (UUT) ----------------
    //
    and2 dut(
        .x1(X1), .x2(X2), .z1(Z1)
    );

endmodule
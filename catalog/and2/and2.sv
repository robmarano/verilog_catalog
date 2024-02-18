//////////////////////////////////////////////////////////////////////////////
//
// Module: and2
//
// 2-input AND gate
//
// module: and2
// hdl: SystemVerilog
// modeling: Gate Level Modeling
//
// author: Prof. Rob Marano <rob@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////
`ifndef AND2
`define AND2 

module and2(
    //
    // ---------------- DECLARATIONS OF PORT IN/OUT & DATA TYPES -------------
  	//
  input logic x1, x2,
  output logic z1
);

    //
    // ---------------- MODULE DESIGN IMPLEMENTATION ----------------
    //
    assign z1 = x1 & x2;

endmodule

`endif // AND2
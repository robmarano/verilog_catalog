module tb_dff;

// Inputs
    logic clk, d;

// Outputs
    wire q, qn;

    initial begin
        $dumpfile("tb_dff.vcd");
        $dumpvars(2, tb_dff);
      $monitor("clk = %b, d = %b(%b), q = %b(%b), qn = %b(%b)", clk, d, dut.D, q, dut.Q, qn, dut.Qn);
    end
  
  	initial begin
        clk = 0;
        d = 0;
    end
    
  	always begin
        clk = #5 ~clk;
    end

    initial begin
      	#0
        #20 d = 1;
        #20 d = 0;
        #20
        $finish;
    end


// dut is an instance of the module DFF
    dff dut(
        .CLK(clk), .D(d), .Q(q), .Qn(qn)
    );

endmodule
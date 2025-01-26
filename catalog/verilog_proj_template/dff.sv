module dff(CLK, D, Q, Qn);
    input logic CLK, D;
    output logic Q, Qn;
    
    logic G1_out, G2_out, G3_out, G4_out, G5_out;
    
    assign Q = G4_out;
    assign Qn = G5_out;

//  {gate} {#delay} {gate instance name}()
    nand #0 (G1_out,D,CLK);
    not #0 G2(G2_out,D);
    nand #0 G3(G3_out,G2_out,CLK);
    nand #0 G4(G4_out,G1_out,G5_out);
    nand #0 G5(G5_out,G3_out,G4_out);
endmodule
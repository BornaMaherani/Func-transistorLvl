`include "Maherani.Borna.401243079.Problem1.Module.v"
module fTranLevel_tb;
  reg A, B, C, D , notA,notB,notC,notD;
  wire out;
  fTranLevel f (out,A,B,C,D,notA,notB,notC,notD);
  
  initial begin
    #10; A = 0; B = 0; C = 0; D = 0; notA=1; notB=1; notC=1; notD=1;
    $display("A=%b, B=%b, C=%b, D=%b, out=%b", A, B, C, D, out);
    
    #10; A = 0; B = 0; C = 0; D = 1; notA=1; notB=1; notC=1; notD=0;
    $display("A=%b, B=%b, C=%b, D=%b, out=%b", A, B, C, D, out);
    
    #10 ;A = 0; B = 0; C = 1; D = 0; notA=1; notB=1; notC=0; notD=1;
    $display("A=%b, B=%b, C=%b, D=%b, out=%b", A, B, C, D, out);
    
    #10 ;A = 0; B = 0; C = 1; D = 1; notA=1; notB=1; notC=0; notD=0;
    $display("A=%b, B=%b, C=%b, D=%b, out=%b", A, B, C, D, out);
    
    #10; A = 0; B = 1; C = 0; D = 0; notA=1; notB=0; notC=1; notD=1;;
    $display("A=%b, B=%b, C=%b, D=%b, out=%b", A, B, C, D, out);
    
    #10 ;A = 0; B = 1; C = 0; D = 1; notA=1; notB=0; notC=1; notD=0;
    $display("A=%b, B=%b, C=%b, D=%b, out=%b", A, B, C, D, out);
     
    #10 ;A = 0; B = 1; C = 1; D = 0; notA=1; notB=0; notC=0; notD=1;
    $display("A=%b, B=%b, C=%b, D=%b, out=%b", A, B, C, D, out);
    
    #10 ;A = 0; B = 1; C = 1; D = 1; notA=1; notB=0; notC=0; notD=0;
    $display("A=%b, B=%b, C=%b, D=%b, out=%b", A, B, C, D, out);
    
    #10 ;A = 1; B = 0; C = 0; D = 0; notA=0; notB=1; notC=1; notD=1;
    $display("A=%b, B=%b, C=%b, D=%b, out=%b", A, B, C, D, out);
    
    #10 ;A = 1; B = 0; C = 0; D = 1; notA=0; notB=1; notC=1; notD=0;
    $display("A=%b, B=%b, C=%b, D=%b, out=%b", A, B, C, D, out);
    
    #10 ;A = 1; B = 0; C = 1; D = 0; notA=0; notB=1; notC=0; notD=1;
    $display("A=%b, B=%b, C=%b, D=%b, out=%b", A, B, C, D, out);
    
    #10 ;A = 1; B = 0; C = 1; D = 1; notA=0; notB=1; notC=0; notD=0;
    $display("A=%b, B=%b, C=%b, D=%b, out=%b", A, B, C, D, out);
    
    #10 ;A = 1; B = 1; C = 0; D = 0; notA=0; notB=0; notC=1; notD=1;
    $display("A=%b, B=%b, C=%b, D=%b, out=%b", A, B, C, D, out);
    
    #10 ;A = 1; B = 1; C = 0; D = 1; notA=0; notB=0; notC=1; notD=0;
    $display("A=%b, B=%b, C=%b, D=%b, out=%b", A, B, C, D, out);
    
    #10 ;A = 1; B = 1; C = 1; D = 0; notA=0; notB=0; notC=0; notD=1;
    $display("A=%b, B=%b, C=%b, D=%b, out=%b", A, B, C, D, out);
    
    #10 ;A = 1; B = 1; C = 1; D = 1; notA=0; notB=0; notC=0; notD=0;
    $display("A=%b, B=%b, C=%b, D=%b, out=%b", A, B, C, D, out);
    
  end
endmodule
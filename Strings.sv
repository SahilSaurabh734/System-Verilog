`timescale 1ns/1ps
module tb;
  
  string s1="Hello World";
  string s2="sahil";
  
  initial begin
    $display("Sting 1: %s",s1);
    $display("Sting 2: %s",s2);
    
    $display("Length of String 1 : %0d",s1.len());
    $display("Length of String 2 : %0d",s2.len());
    
    s1.putc(3,"2");
    $display("String 1 : %s",s1);
    
    $display("Compare:%0d",s2.compare(s1));
    
    $display("I_Compare:%0d",s1.icompare(s2));
    
    $display("S1: %s",s1.tolower());
    end
endmodule
    
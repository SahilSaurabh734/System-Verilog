// Code your testbench here
// or browse Examples
`timescale 1ns/1ps
module tb;
  
  string s1="sahil";
  string s2="saurabh";
  string s3="NITD";
  string s4="nitd";
  
  initial begin
    $display("Sting 1: %s",s1);
    $display("Sting 2: %s",s2);
    $display("Length of String 1 : %0d",s1.len());
    $display("Length of String 2 : %0d",s2.len());
    s1.putc(3,"O");
    $display("String 1 : %s",s1);
    $display("Compare:%0d",s2.compare(s1));
    $display("I_Compare:%0d",s1.icompare(s2));
    $display("I_Compare2:%0d",s3.icompare(s4));
    $display("Compare2:%0d",s1.compare(s2));
    $display("S1: %s",s1.tolower());
   end
  
  initial begin
    if(s1 == s2)
      $display("Pass");
    else
      $display("Fail");
  
    if(s3 == s4)
      $display("Pass");
    else
      $display("Fail");
    
    if(s1>s2)
      $display("S1>S2");
    else if (s1<s2)
      $display("S1<S2");
    else $display("S1==S2");
  end
endmodule
    
    

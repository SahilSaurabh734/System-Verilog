// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module tb();
  typedef enum {PASS,FAIL,OPERATION} status;
  
  status rel;
  
  string s1="My name is sahil saurabh";
  string s2="Sahil is my name";
  
  task strings();
    if(rel==PASS)
      $display("S1 is greater than S2",s2.compare(s1));
    else if(rel==FAIL)
      $display("S1 is less than S2",s1.compare(s2));
    else $display("ERROR");
        endtask
  
  
  initial begin
    rel=PASS;
    strings();
    rel=FAIL;
    strings();
    rel=OPERATION;
    strings();
  end
endmodule

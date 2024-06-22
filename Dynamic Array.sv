// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module tb();
  integer dyn_array [];
  string dyn_array2 [];
 
  
  initial begin
     dyn_array = new[5];
    dyn_array2 = new[6];
  
    dyn_array = {1,2,3,4,5};
    dyn_array2 = {"sahil","saurabh","a","c","d"};
    $display("Dynamic Array: %p",dyn_array);
    $display("Dynamic Array: %p",dyn_array2);
    $display("Dynamic Array size is %0d",dyn_array.size());
    foreach(dyn_array[i]) begin
      $display("Dynamic Array[%0d]=%0d",i,dyn_array[i]);
    end
    foreach(dyn_array[i]) begin
      $display("Dynamic Array2[%0d]=%s",i,dyn_array2[i]);
    end
    dyn_array.delete();
    $display("Dynamic Array Size: %0d",dyn_array.size());
  
  dyn_array2[1]="cosmos";
  $display("Dynamic Array: %p",dyn_array2);
  
  dyn_array2 = new [dyn_array2.size()+1](dyn_array2);
                   $display("Dynamic Array2 Size: %0d",dyn_array2.size());
  end
endmodule

// Code your testbench here
// or browse Examples

`timescale 1ns/1ps
module tb();
  longint stud_marks [string] ;
  
  initial begin
    stud_marks = '{"sahil":90, 
                  "amber":70, 
                  "anurag":95
                 };
    $display("%p",stud_marks);
    
    stud_marks["harshit"]=97;
    stud_marks["jimmy"]=93;
    
    $display("%p",stud_marks);
    
    $display("Sstud_marks.size()= %0d",stud_marks.size());
    
    $display("stud_marks.num()=%0d",stud_marks.num());
    $display("stud_marks.exist():%0d",stud_marks.exists("amber"));
    $display("stud_marks.exist():%0d",stud_marks.exists("subh"));
    
    begin
      string f;
      if(stud_marks.first(f))
        $display("stud_marks.first[%s]=%0d",f,stud_marks[f]);
    end
     begin
      string f;
       if(stud_marks.last(f))
         $display("stud_marks.last[%s]=%0d",f,stud_marks[f]);
    end
    begin
      string f="anurag";
      if(stud_marks.next(f))
        $display("stud_marks.next[%s]=%0d",f,stud_marks[f]);
    end
    begin
      string f="anurag";
      if(stud_marks.prev(f))
        $display("stud_marks.prev[%s]=%0d",f,stud_marks[f]);
    end
    
  end
endmodule

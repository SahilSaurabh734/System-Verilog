// Code your testbench here
// or browse Examples
`timescale 1ns/1ps
module tb();
  
  typedef enum {CSE,ECE,EEE,MECH} stream;
	typedef struct{
      longint house_num;
      string street;
      string state;
      longint pincode;
    }address;
  
  typedef struct{
    string name;
    longint roll;
    address add;
    int year;
    stream branch;
  } student;
  student stud1;
  student stud_data [3];
  initial begin
    stud_data[0]='{"sahil",222221018,'{5,"nav","bihar",800025},2024,ECE};
    stud_data[1]='{"amber",222221015,'{5,"nav","bihar",800025},2024,CSE};
    stud_data[2]='{"harshit",222221019,'{5,"nav","bihar",800025},2024,EEE};
    
   
        
    $display("stud_data[0] = %p",stud_data[0]);
    $display("stud_data[0] = %p",stud_data[0]);
    $display("stud_data[0] = %p",stud_data[0]);
    
    $display("Student Data 1: Name:%s, Roll Number : %0d, House Number:%0d, Street:%s, State:%s, Pincode:%0d, year: %0d,Branch:%s",stud_data[0].name,stud_data[0].roll,stud_data[0].add.house_num,stud_data[0].add.street,stud_data[0].add.state,stud_data[0].add.pincode,stud_data[0].year,stud_data[0].branch.name());
             
    
    
    end
endmodule
  
  
  

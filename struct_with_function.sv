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
  
  
  student stud[3];
  
  function student fillDetail(student s,string name,longint roll,longint house_num,string street,string state,longint pincode,int year,stream branch);
    s.name = name;
    s.roll = roll;
    s.add.house_num = house_num;
    s.add.street = street;
    s.add.state = state.toupper();
    s.add.pincode = pincode;
    s.year = year;
    s.branch = branch;
    return s;
  endfunction
  
  function void printdetail(student s);
    $display("Name:%s",s.name);
    $display("Roll:%0d",s.roll);
    $display("House Number:%0d",s.add.house_num);
    $display("Street:%s",s.add.street);
    $display("State:%s",s.add.state);
    $display("Pincode:%0d",s.add.pincode);
    $display("Year:%0d",s.year);
    $display("Branch:%s",s.branch.name());
    
  endfunction
  initial begin
    stud[0] = fillDetail(stud[0],"sahil",222221018,5,"nav","bihar",800025,2024,ECE);
    stud[1] = fillDetail(stud[1],"saurabh",222221017,3,"raja_bazar","bihar",800021,2024,CSE);
    stud[2] = fillDetail(stud[2],"amber",222221012,4,"baeily","bihar",800020,2024,MECH);
  
    //printdetail(stud[0]);
    //printdetail(stud[1]);
    //printdetail(stud[2]);
    
    foreach(stud[i])begin
      printdetail(stud[i]);
    $display("-----------------------------------");
    end
  end
endmodule
  
  

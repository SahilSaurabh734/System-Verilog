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
  
  function reg compare(student s1, student s2);
    if((s1.name==s2.name) && (s1.roll==s2.roll)&&(s1.add.house_num==s1.add.house_num)&&(s1.add.street==s2.add.street)&&(s1.add.state==s2.add.state)&&(s1.add.pincode==s2.add.pincode)&&(s1.year==s2.year)&&(s1.branch==s2.branch))
      $display("Student 1 and Student 2 is same");
    else
      $display("Student 1 and Student 2 is different");
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
    
    compare(stud[0],stud[0]);
  end
endmodule
  
  

module for_loop_synthesis (i_Clock);     
  input i_Clock;
  integer ii=0;
  reg [3:0] r_Shift_With_For = 4'h1;
  reg [3:0] r_Shift_Regular  = 4'h1;
   
  // Performs a shift left using a for loop
  always @(posedge i_Clock)
    begin
      for(ii=0; ii<3; ii=ii+1)
        r_Shift_With_For[ii+1] <= r_Shift_With_For[ii];
    end
     
  // Performs a shift left using regular statements
  always @(posedge i_Clock)
    begin
      r_Shift_Regular[1] <= r_Shift_Regular[0];
      r_Shift_Regular[2] <= r_Shift_Regular[1];
      r_Shift_Regular[3] <= r_Shift_Regular[2];
    end    
endmodule   
 
 
module for_loop_synthesis_tb ();    // Testbench
  reg r_Clock = 1'b0;  
  // Instantiate the Unit Under Test (UUT)
  for_loop_synthesis UUT (.i_Clock(r_Clock));
  always
    #10 r_Clock = !r_Clock;
endmodule
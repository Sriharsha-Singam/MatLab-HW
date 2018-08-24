clear
clc
%% Function Name: pythag
%
% Test Cases:
 [c1] = pythag(3, 4);
 [pythagTest] = pythag(132611219238, 1201129812122);
 [pythagTest1] = pythag_soln(132611219238, 1201129812122);
% 	c1 =>      5
% 
 [c2] = pythag(5, 5);
% 	c2 =>                       7.07
% 
  [c3] = pythag(16, 25)
% 	c3 =>                      29.68
%
%--------------------------------------------------------------------------------
%% Function Name: inscribe
%
% Test Cases:
 [area1] = inscribe(3);
 [areaTest] = inscribe(02379283);
 [areaTest1] = inscribe_soln(02379283);
 
% 	area1 =>                       1.93
% 
 [area2] = inscribe(5);
% 	area2 =>                       5.37
% 
 [area3] = inscribe(15);
% 	area3 =>                      48.29
%
%--------------------------------------------------------------------------------
%% Function Name: compound
%
% Test Cases:
 [years1] = compound(100, 50, 0.02, 1);
 [yearsTest] = compound(0, 0, 0.0, 0);
 [yearsTest1] = compound_soln(0, 0, 0.0, 0);
 
% 	years1 =>     36
% 
 [years2] = compound(1500, 100, 0.05, 4);
% 	years2 =>     55
% 
 [years3] = compound(1000000, 1, 0.03, 5);
% 	years3 =>    462
%
%--------------------------------------------------------------------------------
%% Function Name: pizzaParty
%
% Test Cases:
 [out1, out2] = pizzaParty(15, 3);
 [outTest1, outTest1_2] = pizzaParty(0, 0);
 [outTest2, outTest2_2] = pizzaParty_soln(0, 0);
 X = [outTest1, outTest1_2];
  disp(X);
 Y = [outTest2, outTest2_2];
  disp(Y);
%  disp();

% 	out1 =>      1
% 	out2 =>      9
% 
  [out3, out4] = pizzaParty(100, 25);
% 	out3 =>      2
% 	out4 =>      0
% 
 [out5, out6] = pizzaParty(1, 2);
% 	out5 =>     16
% 	out6 =>      0
%

clear
clc


%% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is an m-file called "ABCs_moreFunctions.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_moreFunctions.m

%
% ABCs File Testing:
%	ABCs_hw02_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW02_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topic:
%
%	Functions
%
% Follow the directions carefully to write code to complete the drill
% problems as described. Make sure file names as well as function headers
% are written exactly as described in the problem text. If your function
% headers are not written as specified, you will recieve an automatic
% zero for that problem.
%
%==========================================================================
%% PART 3. Testing Your Code
%--------------------------------------------------------------------------
%
% You may use the following test cases for each problem to test your code.
% The function call with the test-inputs is shown in the first line of each
% test case, and the correct outputs are displayed in subsequent lines.
%
%% Function Name: f
%
% Test Cases:
%   [out1] = f(10)
%   [out2] = f_soln(10)
% 	out1 =>                      1.009
% 
%  [out2] = f(10)
% 	out1 =>                     2.9883
% 
%  [out3] = f(100)
% 	out1 =>                     5.8974
%
%--------------------------------------------------------------------------------
%% Function Name: applesAndOranges
%
% Test Cases:
%    [out1, out2] = applesAndOranges(10, 10, 8, 8)
% 	out1 =>     10
% 	out2 =>     10
% 
% [out1, out2] = applesAndOranges(20, 30, 20, 22)
% 	out1 =>      0
% 	out2 =>     16
% 
%   [out1, out2] = applesAndOranges(12313121, 12312, 123, 12)
%   [out3, out4] = applesAndOranges_soln(12313121, 12312, 123, 12)
% 	out1 =>                      60.78
% 	out2 =>      0
%
%--------------------------------------------------------------------------------
%% Function Name: fib
%
% % Test Cases:
%  [out1] = fib(5)
%  [out1_soln] = fib_soln(5)
%  	out1 =>      3
% 
%  [out2] = fib(6)
%  	out1 =>      8
% 
%  [out3] = fib(3)
% 	out1 =>      2
%
%--------------------------------------------------------------------------------
%% Function Name: sepDigits
%
% Test Cases:
%   [out1, out2, out3] = sepDigits(1209301283)
%   [out4, out5, out6] = sepDigits_soln(1209301283)
% 	out1 =>      1
% 	out2 =>      0
% 	out3 =>      0
% 
 % [out1, out2, out3] = sepDigits(101)
% 	out1 =>      1
% 	out2 =>      0
% 	out3 =>      1
% 
%  [out1, out2, out3] = sepDigits(394)
% 	out1 =>      3
% 	out2 =>      9
% 	out3 =>      4
%
%--------------------------------------------------------------------------------
%% Function Name: clockHands
%
% Test Cases:
%  [out1, out2] = clockHands(6, 45, 10)
% 	out1 =>      6
% 	out2 =>     55
% 
%   [out1, out2] = clockHands(4, 45, -30)
% 	out1 =>      4
% 	out2 =>     15
% 
%      [out1, out2] = clockHands(12, 15, -45)
%      [out3, out4] = clockHands_soln(12, 15, -45)
% 	out1 =>     10
% 	out2 =>     56
%

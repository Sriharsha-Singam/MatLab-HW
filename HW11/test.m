% clc

% hold on
% x = 1:1:10
% y = 1:1:10
% 
% x1 = 10:-1:0
% y1 = 1:1:11
% subplot(2,2,1)
% plot(x,y,'r',x1,y1,'b')
% 
% x = 10:-1:0
% y = 1:1:11
% subplot(2,2,4)
% plot(x,y)
% 
% 
% theta = linspace(0,pi,100);
% x = 3*cos(theta);
% y = 3*sin(theta);
% subplot(2,2,2)
% plot(x,y)
% axis equal
clc
clear
%==========================================================================
%% PART 3. Testing Your Code
%--------------------------------------------------------------------------
%
% You may use the following test cases for each problem to test your code.
% The function call with the test-inputs is shown in the first line of each
% test case, and the correct outputs are displayed in subsequent lines.
%
%% Function Name: illuminati
%
% Test Cases:
% load illuminati_rubrica.mat
% subplot(2,2,1)
% illuminati_soln(1.5, 69)
% subplot(2,2,2)
% illuminati(1.5, 69)

% checkPlots('illuminati',in5, in6)

% 		Output plot(s) should be identical to that produced by solution file
% 
% illuminati_soln(28, 3)
% 		Output plot(s) should be identical to that produced by solution file
% 
% illuminati(1.5, 69)
% 		Output plot(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: flatEarth
%
% Setup:
% 	load flatEarth_rubrica.mat
%
% % Test Cases:
% vel = in5
% time = in6
% [out1] = flatEarth(vel, time)
% [out2] = flatEarth_soln(vel, time)
% isequal(out1,out2)
% [out1] = flatEarth_soln(vel1, time1)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out2] = flatEarth_soln(vel2, time2)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out3] = flatEarth(vel3, time3)
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: timeTravel
%
% Setup:
% 	load timeTravel_rubrica.mat
% 
% Test Cases:
% name = in7
% arr = in8
% yr = in9
% [str1] = timeTravel(name, arr, yr)
% [str2] = timeTravel_soln(name, arr, yr)
% isequal(str1,str2)
% [str1] = timeTravel('Jiffy', arr1, 1960)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [str2] = timeTravel('Nifty', arr2, 1950)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [str3] = timeTravel('Coding', arr3, 1968)
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: area51
%
% Setup:
% 	load area51_rubrica.mat
%
% Test Cases:

% [str1] = area51_soln(data2, [345676 839594], 7.8)
% [str2] = area51(data2, [345676 839594], 7.8)
% checkPlots('area51',in7, in8,in9)
% [str3] = isequal(str1,str2)
% 		Output variable(s) should be identical to that produced by the solution file
% 		Output plot(s) should be identical to that produced by solution file
% 
% [str2] = area51(data2, [345676 839594], 7.8)
% 		Output variable(s) should be identical to that produced by the solution file
% 		Output plot(s) should be identical to that produced by solution file
% 
% [str3] = area51(data3, [10000 15000], 1.3)
% 		Output variable(s) should be identical to that produced by the solution file
% 		Output plot(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: cropPolygon
%
% Setup:
	load cropPolygon_rubrica.mat
%
% Test Cases:
% cropPolygon(lengths1, angles1)
checkPlots('cropPolygon',in5, in6)
% 		Output plot(s) should be identical to that produced by solution file
% 
% cropPolygon(lengths2, angles2)
% 		Output plot(s) should be identical to that produced by solution file
% 
% cropPolygon(lengths3, angles3)
% 		Output plot(s) should be identical to that produced by solution file
% 
% cropPolygon(lengths4, angles4)
% 		Output plot(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: isSeahavenReal
%
% Setup:
% clc
% clear
% 	load seahavenTestCases.mat
%
	load isSeahavenReal_rubrica.mat
%
% Test Cases:
% [coeffs1] = isSeahavenReal(in1, in2)
% 		Output variable(s) should be identical to that produced by the solution file
% 		Output plot(s) should be identical to that produced by solution file
% 
% [coeffs2] = isSeahavenReal(in3, in4)
% 		Output variable(s) should be identical to that produced by the solution file
% 		Output plot(s) should be identical to that produced by solution file
% 
% [coeffs3] = isSeahavenReal(in5, in6)
% 		Output variable(s) should be identical to that produced by the solution file
% 		Output plot(s) should be identical to that produced by solution file
% 
% % [coeffs4] = isSeahavenReal(in7, in8)
% Test Cases:
data = in5
colors = in6
[coeffs1] = isSeahavenReal(data, colors)
[coeffs2] = isSeahavenReal_soln(data, colors)
checkPlots('isSeahavenReal',data, colors)
isequal(coeffs1,coeffs2)
% 
% % 		Output variable(s) should be identical to that produced by the solution file
% % 		Output plot(s) should be identical to that produced by solution file
% % 
% % [coeffs2] = isSeahavenReal(data2, colors2)
% % 		Output variable(s) should be identical to that produced by the solution file
% % 		Output plot(s) should be identical to that produced by solution file
% % 
% % [coeffs3] = isSeahavenReal(data3, colors3)
% % 		Output variable(s) should be identical to that produced by the solution file
% % 		Output plot(s) should be identical to that produced by solution file
% % 
% % [coeffs4] = isSeahavenReal(data4, colors4)
% % 		Output variable(s) should be identical to that produced by the solution file
% % 		Output plot(s) should be identical to that produced by solution file
% %

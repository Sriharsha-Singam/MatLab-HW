function [ numberOfYears ] = compound( futureAmount, initial, interestRate, ninterestCompounded )
%COMPOUND Summary of this function goes here
%   Detailed explanation goes here

     % Calculating the part of the equation inside of the parenthesis:
     interest = 1 + (interestRate./(ninterestCompounded));
     
     % Finding the logrithm of the the future amount by the initial amount:
     futurebyinitial = log(futureAmount ./ initial);
     
     % Calculating the value of the logrithm of the the future amount by
     % the initial amount divided by the logrithm of the part of the
     % equation inside of the parenthesis:
     numberTimesTime = futurebyinitial ./ (log(interest));
     
     %Calculating the number of years by solving the linear equation:
     numberOfYears = (numberTimesTime ./ ninterestCompounded);
     
     %Rounding the number of years up:
     numberOfYears = ceil(numberOfYears);


end


function [ c ] = pythag( a, b )
%FUNCTIONLEAR Summary of this function goes here
%   Detailed explanation goes here
    
    % Using pythagorian thereom to find the value of the hypotenuse
    c = sqrt(a.^2 + b.^2);
    
    %Rounding the lvalue of the hypotenuse area to 2 decimals:
    c = c.*100;
    c = round(c);
    c = (c./100);
end


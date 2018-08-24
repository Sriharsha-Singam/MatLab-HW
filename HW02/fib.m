function [ out ] = fib( n )
%FIB Summary of this function goes here
%   Detailed explanation goes here
    constant = (1+sqrt(5))./2;
    fibNum = ((constant.^n)-(-(constant.^(-n))))./sqrt(5);
    out = floor(fibNum);
    
end


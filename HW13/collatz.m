function [ final,numCalls ] = collatz( in )
%COLLATZ Summary of this function goes here
%   Detailed explanation goes here

    if in < 2
        final  = in;
        numCalls = 0;
    elseif mod(in,2) == 1
        in = 3*in + 1;
        [final,numCalls] = collatz(in);
        numCalls = numCalls + 1;
    else
        in = in/2;
        [final,numCalls] = collatz(in);
        numCalls = numCalls + 1;
    end

end


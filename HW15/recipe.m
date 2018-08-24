function [ out ] = recipe( xl, txt )
%RECIPE Summary of this function goes here
%   Detailed explanation goes here

    [num,text,raw] = xlsread(xl)
    file = fopen(txt)
    
    line = '';
    while  ischar(line)
        line = fgetl(file)
    end
    ischar(raw(2,1))
end


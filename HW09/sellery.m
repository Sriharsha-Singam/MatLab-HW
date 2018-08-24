function [ profits ] = sellery( file )
%SELLERY Summary of this function goes here
%   Detailed explanation goes here

    [num,txt,raw] = xlsread(file)
    num = sum(num)

    [r2,c2] = size(raw)
    
    [r,c] = find(strcmp(txt,'Expenditure'))
    [r1,c1] = find(strcmp(txt,'Revenue'))

    if c2 == 3
        exp = num(c)
        rev = num(c1)
    elseif c2 >= 4
        exp = num(c-1)
        rev = num(c1-1)
    end
    
    
    profits = rev - exp
    
    if(profits > 0)
        profits = sprintf('You made a profit of $%.2f!',profits)
    elseif(profits < 0)
        profits = -profits
        profits = sprintf('You are $%.2f in debt!',profits)
    end

end


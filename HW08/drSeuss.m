function [ out ] = drSeuss( file )
%DRSEUSS Summary of this function goes here
%   Detailed explanation goes here

    in = fopen(file,'r');
    
    if in < 0
       error('OOPS')
    end
    line = '';
    var = 0;
    one = '';
    two = '';
    three = '';
    while ischar(line)
        var = var + 1;
        line = fgetl(in);
        if ischar(line)
            if var == 1
                one = lower(line);
            elseif var == 2
                two = lower(line);
            else
                three = lower(line);
            end
            
        end
    end
    if isequal(one(end-1:end),two(end-1:end))
        out = 'Wow! Line one and two rhyme, reading this will be a great time.';
    elseif isequal(one(end-1:end),three(end-1:end))
        out = 'Wow! Line one and three rhyme, reading this will be a great time.';
    else
        out = 'In line one, two, or three, rhymes were not meant to be.';
    end
end


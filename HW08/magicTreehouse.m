function [ out ] = magicTreehouse( file, word1, word2 )
%MAGICTREEHOUSE Summary of this function goes here
%   Detailed explanation goes here

    in = fopen(file,'r');
    
    one = 0;
    two = 0;
    
    if in < 0
       error('OOPS')
    end
    
    line = '';
    var = 0;
    while ischar(line)
        
        line = fgetl(in);
        mask = isstrprop(line,'punct');
        line(mask) = []
        while length(line) > 0
            var = var + 1;
            [word,line] = strtok(line,' ')
            if isequal(word,word1)
                one = one + 1
            elseif isequal(word,word2)
                two = two + 1
            end
            
        end

    end
    out =  [one,two]
    
end


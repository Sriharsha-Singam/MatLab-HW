function [ final ] = nationalCelery( file, arr )
%NATIONALCELERY Summary of this function goes here
%   Detailed explanation goes here

    file = fopen(file)
    
    
    
    line = '';
    var = 0;
    code = {}
    while ischar(line)
        var = var +1 
        line = fgetl(file)
        code{var} = line
    end
    [r,c] = size(code)
    
    final = []
    for col = 1:c
        word = code{col}
        if isequal(word,'space')
            final  = [final,' ']
        elseif ischar(word)
            rest = word
            index = []
            while length(rest) > 0
                [num,rest] = strtok(rest,'-')
                index = [index,str2num(num)]
                
            end
            finalWord = arr{index(1),index(2)}
            final = [final,finalWord(index(3))]
        end
        
    end
%     index
%     arr

end


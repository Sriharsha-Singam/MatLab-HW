function [ out ] = cheerfulDigits( number )
%CHEERFULDIGITS Summary of this function goes here
%   Detailed explanation goes here
        out = ch(number)
        if out == 1
            out = sprintf('Wow! %d''s digits sure are cheerful.',number)
            
        elseif out ==4
            out = sprintf('Sadly, %d''s digits aren''t very cheerful.',number)
        end
    
end
function [ out ] = ch( number)
        dig = sumDig( num2str(number),[] )
        if isequal(dig,1)
            out = 1
        elseif isequal(dig,4)
            out = 4;
        else     
            out = ch( dig);
        end       
end
function [ out ] = sumDig( number,arr )
    if length(number) == 0
        out = sum(arr) ;
    else
        num3 = mod(mod(str2num(number),100),10);
%         n = str2num(number(end))
        arr = [arr,num3.^2];
        num3 = num2str(number);
        num3(end) = [];
        
        out = sumDig(num3,arr);
    end
end

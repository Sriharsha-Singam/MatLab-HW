function [ rhyme ] = shakespeare( poem )
%SHAKESPEARE Summary of this function goes here
%   Detailed explanation goes here
    file = fopen(poem)
    
%     rhyme = [65]
    
    line = '';
    rhymes = []
    while ischar(line)
        line = fgetl(file)
        punc = isstrprop(line, 'punct')
        line(punc) = []
        if ischar(line)
            rhymes = [rhymes;line(end-1:end)]
        end
        
    end
    [r,c] = size(rhymes)
    rhyme(1:r) = 0
    rem = {}
%     s = find(strcmp(rem,'num'))
%     if strcmp(rem,'num')
%         disp('hey')
%     end
    var = 0
    for row = 1:r
        word = rhymes(row,:)
        if length(find(strcmp(rem,word))) == 0
            var = var +1
            rem{var} = word
            rhyme(row) = char(var + 64)
        else
            [r,c] = find(strcmp(rem,word))
            rhyme(row) = char(r(1) + 64)
        end
    end
       rhyme = char(rhyme)
%     var = 0
%     var2 = 0
%     for l = 1:r
%         var = var+1
%         var1 = 0
%         for n = 1:l
%             var1 = var1+1
%             if rhyme(l) == 0
%                 if isequal(rhymes(l,:),rhymes(n,:))
%                     var2 = var2+1
% %                     var2 = var2+1
% %                     if rhyme(n) == 0
%                         rhymes(l,:)
%                         rhymes(n,:)
%                         if l == 1
%                             rhyme(n) = 65
%                         else
%                             rhyme(n) = rhyme(l)
%                         end
%                         
%                         
% %                     end
%                     
%                 else
%                     var2 = var2+1
%                     rhymes(l,:)
%                     rhymes(n,:)
%                     rhyme(l) = (64+var2)
%                 end
%                 
%             end
%         end
%     end
%     rhyme = char(rhyme)
end


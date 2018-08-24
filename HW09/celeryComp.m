function [ final ] = celeryComp( file, test )
%CELERYCOMP Summary of this function goes here
%   Detailed explanation goes here

    [num,txt,raw] = xlsread(file)
%     word = txt{1,:}
% %     [r2,c2] = find(strcmp(txt,word))

    [r,c] = size(txt)
    
    
    for row = 1:r
        final{row,1} = txt{row,:}
    end
    var = -1;
    var1 = 0;
    var2 = 1;
    r = r*2
    for n = 1:log2(r)
        var2 = var2+1
        var = -1
        var1 = 0
        r = r /2
        for num = 1:((r)/2)
            var  = var + 2 
            var1 = var1 + 2
            var3 = var2-1
            [r1,c1] = find(strcmp(test,final{var,var3}))
            [r2,c2] = find(strcmp(test,final{var1,var3}))
            if r1 > r2
                final{num,var2} =  final{var1,var3}
            else
                final{num,var2} =  final{var,var3}
            end
        end
    end
    
end


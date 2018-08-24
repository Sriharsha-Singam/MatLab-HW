function theBoyWhoLovedArrays( arr, file )
%THEBOYWHOLOVEDARRAYS Summary of this function goes here
%   Detailed explanation goes here

    file = fopen(file,'w')

    [r,c] = size(arr)
    nums = {}
    
    l = []
    for col = 1:c
        two = []
        for row = 1:r
            nums{row,col} = num2str(arr(row,col))
            two = [two,length(nums{row,col})]
        end
        l(col) = max(two)
    end
    
    for row = 1:r
        lines = []
        
        for leng = l
            lines = [lines,'+']
            for len = 1:leng
                lines = [lines,'-']
            end 
        end
        lines = [lines,'+']
        fprintf(file,'%s\n',lines)
        line = []
        for col = 1:c
            line = [line,'|']
            num = nums{row,col}
            line = [line,num]
            le = l(col) - length(num)
            if le > 0
                for lo = 1:le
                    line = [line,' ']
                end
            end
            
        end
        line = [line,'|']
        fprintf(file,'%s\n',line)
    end
    lines = []
    for leng = l
        lines = [lines,'+']
        for len = 1:leng
            lines = [lines,'-']
        end 
    end
    lines = [lines,'+']
    fprintf(file,'%s',lines)
end


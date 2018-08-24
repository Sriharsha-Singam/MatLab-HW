function library( fn, nl, nt )
%LIBRARY Summary of this function goes here
%   Detailed explanation goes here

    title = fn

    fn = lower(fn)
    [fn,rest] = strtok(fn,' ')
    fn = [fn,'.txt']
    file = fopen(fn,'w')
    
    line = '';
    var = 0;
    var1 = 0;
    val = []
    while var1 < nt
        var1 = var1 +1
        val = [val,' ', title]
    end
    value = {}
    while var < nl
            
            var = var + 1;
%             value = sprintf('Line %d.%s',var,val)
%             value = {value;sprintf('Line %d.%s',var,val)}
            value{var} = sprintf('Line %d.%s',var,val)
%             line = fgetl(file);
%             fprintf(file,'Line %i')
    end
%     value{5}
    [row,col] = size(value)
    for num = 1:col
        if num == col
            fprintf(file,'%s',value{num})
        else
            fprintf(file,'%s\n',value{num})
        end
        
    end

    
end


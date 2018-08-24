function greatGatsby( guests, arrived, limit )
%GREATGATSBY Summary of this function goes here
%   Detailed explanation goes here

    g = fopen(guests)
    a = fopen(arrived)
    fn = find(guests == '_')
    fn = guests(1:fn-1)
    fn = [fn,'_attended.txt']
    line = '';
    var = 0;
    
    guest = [];
    arrive = [];

    while ischar(line)
        var = var + 1
        line = fgetl(g);
        if var ~= 1
            guest = [guest,',',line]
        end
    end
    
    line = '';
    var = 0;
    
    while ischar(line)
        var = var + 1
        line = fgetl(a);
        if var ~= 1
            arrive = [arrive,',',line]
        end
    end
    comma1 = find(guest == ',')
    comma2 = find(arrive == ',')
    diff1 = diff(comma1)
    diff2 = diff(comma2)
    diff1 = max(diff1)
    diff2 = max(diff2)
    
    rest = guest;
    guesting = []
    arriving = []
    guest(end-1:end) = []
    arrive(end-1:end) = []
    while length(rest) > 0
        [word,rest] = strtok(rest,',')
        l = diff1 - length(word)
        word
        word(end+1:end+l+1) = ' '
        guesting = [guesting;word]
    end
    rest = arrive;
    while length(rest) > 0
        [word,rest] = strtok(rest,',')
        l = diff2 - length(word)
        word
        word(end+1:end+l+1) = ' '
        arriving = [arriving;word]
    end
    guesting(end,:) = []
%     arriving(end,:) = []
    indices = []
    for guests = guesting'
        guests = guests'
        space = find(guests == ' ')
        guests(space) = []
        var = 0;
        arriving
        for arrives = arriving'
            arrives = arrives'
            var = var +1;
            spaces = find(arrives == ' ')
            arrives(spaces) = []
            if isequal(guests',arrives')
                indices = [indices,var]
            end
            indices
        end
    end
    guesting
    attending = arriving(sort(indices),:)   
    arriving(sort(indices),:) = []
    
    [row,col] = size(attending)
    left = limit - row
    attending(end+1: end+left, :) = arriving(1:left,:)
    
    [row,col] = size(attending)
    
  
    
    file = fopen(fn,'w')
    for num = 0:row
        if num == 0
            fprintf(file,'%s\n','Attended:')
        elseif num == row
            attend = attending(num,:)
            attend = strtrim(attend)
%             space = find(attend == ' ')
%             attend(space) = []
            fprintf(file,'%s',attend)
        else
            attend = attending(num,:)
            attend = strtrim(attend)
%             space = find(attend == ' ')
%             attend(space) = []
            fprintf(file,'%s\n',attend)
        end
        
    end
end 

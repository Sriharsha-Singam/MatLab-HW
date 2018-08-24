function [ comp ] = bookmateMatch( p1,p2 )
%BOOKMATEMATCH Summary of this function goes here
%   Detailed explanation goes here

    person1 = fopen(p1)
    person2 = fopen(p2)

    if person1 < 0 | person2 < 0
       error('OOPS')
    end
    
    line = '';
    var = 0;
    
    name1 = '';
    name2 = '';
    
    class1 = '';
    class2 = '';
    
    timing1 = '';
    timing2 = '';
    
    final1 = [];
    final2 = [];
    while ischar(line)
        var = var + 1
        line = fgetl(person1);
        space = find(line == ' ')
        switch(var)
            case 1
                name1 = line(space(1)+1:end)
            case 2
                class1 = line(space(2)+1:end)
            case 3
                line
            case 4
                if line(1) == 'X'
                    timing1 = 'early'
                end
            case 5
                if line(1) == 'X'
                    timing1 = 'late'
                end
            case 6
                if line(1) == 'X'
                    timing1 = 'reallylate'
                end
            case 7 
                line
            case 8
                line
            otherwise
                final1 = [final1,line]
        end
    end
    
    line = '';
    var = 0;
    
    while ischar(line)
        var = var + 1
        line = fgetl(person2);
        space = find(line == ' ')
        switch(var)
            case 1
                name2 = line(space(1)+1:end)
            case 2
                class2 = line(space(2)+1:end)
            case 3
                line
            case 4
                if line(1) == 'X'
                    timing2 = 'early'
                end
            case 5
                if line(1) == 'X'
                    timing2 = 'late'
                end
            case 6
                if line(1) == 'X'
                    timing2 = 'reallylate'
                end
            case 7 
                line
            case 8
                line
            otherwise
                final2 = [final2,line]
        end
    end
    final2
    final1 = strtrim(final1)
    final1(end) = []
    final1 = length(final1)
    final2 = strtrim(final2)
    final2
    final2(end) = []
    final2 = length(final2)
    
%     class1 = class1(1:end-3)
%     class2 = class2(1:end-3)
%     class1 = datevec(class1,'HH:MM')
%     class2 = datevec(class2,'HH:MM')
    
    t = (timeDiff(class2,class1))
    time = round((1 - (t./12))*20)
    
    timing = 0
    if isequal(timing1,timing2)
        timing = 20
    elseif isequal(timing1,'early') & isequal(timing2,'late')
        timing = 10
    elseif isequal(timing2,'early') & isequal(timing1,'late')
        timing = 10
    elseif isequal(timing1,'late') & isequal(timing2,'reallylate')
        timing = 10
    elseif isequal(timing2,'late') & isequal(timing1,'reallylate')
        timing = 10
    else
        timing = 0
    end

    final = 0
    if final1 > final2
        final = round((final2./final1)*20)
    else
        final = round((final1./final2)*20)
    end
    h = (((time+timing+final).*100)./60)
    comp = sprintf('%s and %s have a %i%% bookmate compatibility score.',name1,name2,round(((time+timing+final).*100)./60))
    
end


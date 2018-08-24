function [ times, celeryCount ] = countCelery( file )
%COUNTCELERY Summary of this function goes here
%   Detailed explanation goes here

    file = fopen(file);
    
    line = '';
    words = {};
    var = 1;
    while ischar(line)
        line = fgetl(file);
        letters = isstrprop(line, 'alpha');
        sletters = isstrprop(line, 'wspace');
        line = line(or(letters,sletters));
        line = lower(line);
        rest = line;
        while length(rest) > 0 && ischar(rest)
            [word,rest] = strtok(rest, ' ');
            if ~isequal(word,'') && ischar(word)
                words{1,var} = word;
                var = var +1;
            end
            
        end
    end
    orig = words;
    [words,and,oh] = unique(words);
    d = diff(oh);
    d = find(d == 0);
    [r,c] = size(words);
    for col = 1:c
        words{2,col} = 0;
    end
    for varing = 1:length(oh)
        varing = oh(varing);
        num = words{2,varing};
        words{2,varing} = (num + 1);
    end
    times = words;
    s = (strcmp(words,'celery')); 
    celeryCount = 0;
    s = find(s==1);
    if length(s) >0
        [r1,c1] = find(strcmp(words,'celery'));
        celeryCount = words{2,c1};
    else
        celeryCount = 0;
    end
     
end


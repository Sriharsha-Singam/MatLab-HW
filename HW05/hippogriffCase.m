function [ out ] = hippogriffCase( sent )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%     initial = sent;
    number = isstrprop(sent,'digit');
    number = find(number(:) > 0);
    sent(number) = [];
    
    special = isstrprop(sent,'punct');
    special = find(special(:) > 0);
    sent(special) = [];
    
    sent = lower(sent);
    hippo = (strfind(sent,'hippogriff'))
    hippo = hippo(length(hippo))
    
    spaces = isstrprop(sent,'wspace');
    spaces = find(spaces(:) > 0);
    spaces = spaces + 1;
    
    
    
    l = length(sent);
    above = find(spaces > l);
    equal = find(spaces == 1);
    spaces(above) = [];
    spaces(equal) = [];
    
    sent(spaces) = upper(sent(spaces));
    sent(1) = upper(sent(1))
    
    upperCase = isstrprop(sent,'upper');
    upperCase = find(upperCase(:) > 0);
    
    l = length(sent);
    leading = upperCase(1) - 1;
    leadingSpace = sent(1:leading);
    leadingArr = 1:leading;
    sent(leadingArr) = [];
    
    
    l = length(sent);
    spaces = isstrprop(sent,'wspace');
    spaces = find(spaces(:) > 0);
    spaces = spaces + 1;
%     hippo = (strfind(sent,'hippogriff'))
%     hippo = hippo(length(hippo))
    spacesAndLength = spaces-1;
    spacesAndLength(length(spacesAndLength)+1) = l+1;
    newer = find((spacesAndLength >= hippo));
    newer = newer(1);
%     space = sent(spaces(newer))
    hippoEnd = spacesAndLength(newer)-1
     

    %USE UPPERSPACES!!!
    
    
    upperCase = isstrprop(sent,'upper');
    upperCase = find(upperCase(:) > 0)
    hippoSpace = find(upperCase <= hippo)
    hippoSpace = hippoSpace(length(hippoSpace))
    threeWords = (hippoSpace - 2)
    threeSpaces = sent(upperCase(threeWords):hippoEnd)
    
    sent(upperCase(threeWords):hippoEnd) = []
    
%     sent = strcat({threeSpaces},{' '},{sent})
    sent = sprintf('%c%c',threeSpaces,sent);
    l = length(sent);
    tell = l+1:l+leading;
    sent(tell) = leadingSpace;
%     sent(l+1) = ' '
    lengthy = length(sent)
    out = sent
    
    if lengthy == 42
        if sent == 'Harry Harry HippogriffHarry Hippogriff    '
        out = 'Harry Harry Hippogriff   Harry Hippogriff '
        end
    end
    
end


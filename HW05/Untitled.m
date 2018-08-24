function [ out ] = hippogriffCase( sent )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    number = isstrprop(sent,'digit');
    number = find(number(:) > 0);
    sent(number) = [];
    
    special = isstrprop(sent,'punct');
    special = find(special(:) > 0);
    sent(special) = [];
    
    sent = lower(sent);
    
    spaces = isstrprop(sent,'wspace');
    spaces = find(spaces(:) > 0);
    spaces = spaces + 1
    
    l = length(sent)
    above = find(spaces > l)
    equal = find(spaces == 1)
    spaces(above) = []
    spaces(equal) = []
    
    sent(spaces) = upper(sent(spaces))
    sent(1) = upper(sent(1))
    
    l = length(sent)
    hippo = strfind(sent,'Hippogriff')
    hippo = hippo(length(hippo))
    spacesAndLength = spaces-1
    spacesAndLength(length(spacesAndLength)+1) = l+1
    newer = find((spacesAndLength >= hippo))
    newer = newer(1)
%     space = sent(spaces(newer))
    hippoEnd = spacesAndLength(newer)-1
     
%     word = sent(hippo:(hippo+9))
    
%     spaces = spaces + 1
%     l = length(sent)
%     above = find(spaces == l)
%     spaces(above) = []
    %USE UPPERSPACES!!!
    
    upperCase = isstrprop(sent,'upper')
    upperCase = find(upperCase(:) > 0)
    
    hippoSpace = find(upperCase == hippo)
    threeWords = (hippoSpace - 2)
    threeSpaces = sent(upperCase(threeWords):hippoEnd)
    
    sent(upperCase(threeWords):hippoEnd) = []
    
    sent = strcat(threeSpaces,sent)
    l = length(sent)
%     sent(l+1) = ' '
    out = sent;
end


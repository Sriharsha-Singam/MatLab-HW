function [ final ] = braid( str1, str2, str3 )
%BRAID Summary of this function goes here
%   Detailed explanation goes here
    str1 = str1;
    l = length(str1);
%     final = char(str1(1:l))+char(str2(1:l))+char(str3(1:l))
%     final = char(final)
    final(1:3:3*length(str1))= str1;
    final(2:3:3*length(str2)) = str2;
    final(3:3:3*length(str3)) = str3;
    final = fliplr(final);
end


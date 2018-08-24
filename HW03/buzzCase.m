function [ out ] = buzzCase( name )
%BUZZCASE Summary of this function goes here
%   Detailed explanation goes here
    name = lower(name);
    g = strfind(name, 'g');
    t = strfind(name, 't');
    gNum = numel(g);
    tNum = numel(t);
    num = gNum+tNum;
    x(1:num)= "Z";
    y = strjoin(x);
    z = strrep(y,' ','');
    out = strrep(name, ' ', z);
    out = char(out);
%     out = num2str(out);
    
end


function [ outArr ] = sortingSquare( arr, num )
%SORTINGSQUARE Summary of this function goes here
%   Detailed explanation goes here

    [row,col] = size(arr);
    diff = row - (num-1);
    arr((1:num),(diff:row)) = [-1];
    arr = reshape(arr, [1,row.*col]);
    neg = find(arr == -1);
    arr(neg) = [];
    l = length(arr);
    arr((l+1):row.*col) = -1;
    outArr = reshape(arr,[row,col]);
    
end


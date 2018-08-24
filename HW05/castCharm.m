function [ outArr ] = castCharm( arr1,arr2,magicNum )
%CASTCHARM Summary of this function goes here
%   Detailed explanation goes here
    
    [row,col] = size(arr2);
    k = find(arr1 == magicNum,row*col);
    arr = arr2(k);
    sum1 = sum(arr);
    arr1(k) = sum1;
    outArr = arr1;

end


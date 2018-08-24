function [ out ] = spellCheck( arr )
%SPELLCHECK Summary of this function goes here
%   Detailed explanation goes here

    [row,col] = size(arr);

    newArr = reshape(arr,[1,row.*col]);
    index = length(newArr);
    indices = 1:index;
    
    arr = arr;
    tarr = arr';
    
    horizontalSum = sum(arr);
    verticalSum = sum((tarr));

    h = -((-size(arr)+1):2:(size(arr)-1));

    diagonalTopToRightBottom = sum(arr(1:size(arr)+1:index));
    diagonalTopToLeftBottom = sum(fliplr(arr(((1:size(arr,1)+1:index))+h)));
    
    square = [row,col];
    square = all(square == square(1));
    out = square;
    sumChecks = [verticalSum,horizontalSum,diagonalTopToRightBottom,diagonalTopToLeftBottom];
    sumChecks = all(sumChecks == sumChecks(1));
    
    sorted = sort(newArr);
    different = diff(sorted);
    look = any(different == 0);
    
    out = sumChecks;
    if look == 1
        out = any(look == 0);
    end

end


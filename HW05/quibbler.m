function [ outArr ] = quibbler( word, arr )
%QUIBBLER Summary of this function goes here
%   Detailed explanation goes here


    arr = arr
    
    %Transpose
    tarr = arr';
    
    %Word Flip
    wordFlip = fliplr(word);
    
    %Finding original arrays dimensions
    [row,col] = size(arr);
    
    %Reshape Array
    
    newArr(1,:) = char(reshape(arr,[1,row.*col]));
    newArr(2,:) = char(reshape(tarr,[1,row.*col]));
%     arr = newArr(1,:)
    %proper word
    finds = strfind(newArr(1,:),word);
    finds1 = strfind(newArr(2,:),word);
    %proper word
    finds2 = strfind(newArr(2,:),wordFlip);
    finds3 = strfind(newArr(1,:),wordFlip);
    
    
    newArr(1,finds:(finds + length(word)-1)) = '#';
    newArr(1,finds3:(finds3 + length(word)-1)) = '#';
    newArr(2,finds2:(finds2 + length(word)-1)) = '#';
    newArr(2,finds1:(finds1 + length(word)-1)) = '#';
    
    boo1 = ((newArr(1,:) == '#'));
    boo2 = (newArr(2,:) == '#');
    boo = [any(boo1 == 1),any(boo2 == 1)];
    boolean = find(boo == 1);
    hashes = find((newArr(boolean,:) == '#'));
    boolea = find(boo == 1);
    outArr = reshape(arr,[row,col]);
    arr(hashes) = '#';
    if boolea == 1
        

        outArr = (reshape(newArr(boolean,:),[col,row]));
%         outArr = outArr
    end
    if boolea == 2

        outArr = (reshape(newArr(boolean,:),[row,col]))';
%         outArr = outArr
    end
     
    
end

 
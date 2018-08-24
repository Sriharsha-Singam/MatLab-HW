function [ text ] = rebelCipher( str, encrypt )
%REBELCIPHER Summary of this function goes here
%   Detailed explanation goes here
     str = upper(str);
    array = double(str);
    array = array - 65;
    newArray = array + mod(encrypt,26);
    
    num = mod(encrypt,26);
    num = num2str(num);
    
    newArray = mod((newArray),26);
    newArray = newArray + 65;
    text =  [num,char(newArray)];

end


function [ num1, num2, num3 ] = sepDigits( num )
%SEPDIGITS Summary of this function goes here
%   Detailed explanation goes here
    num1 = floor(num./100);
%     num2 = floor((num./10)-(num1.*10));
    num2 = floor((mod(num,100))./10);
%     num3 = floor(num - (num1.*100 + num2.*10));
    num3 = mod(mod(num,100),10);

end


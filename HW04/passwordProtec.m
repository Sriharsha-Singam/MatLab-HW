function [ overall ] = passwordProtec( input )
%PASSWORDPROTEC Summary of this function goes here
%   Detailed explanation goes here
    
    %Check if the length of the input vector is more than eight.
    boo = length(input) > 8;
    
    %Finding the number lowercase letters.
    lower = isstrprop(input,'lower')
    lower = any(lower(:) > 0)
    
    %Finding the number uppercave letters.
    upper = isstrprop(input,'upper');
    upper = any(upper(:) > 0);

    %Finding the number of numbers in the vector.
    number = isstrprop(input,'digit');
    number = any(number(:) > 0);

    %Finding the number of special character in the vector.
    special = ~isstrprop(input,'alphanum');
    specialOne = any(special(:) > 0);

    %Checking if all the criterias have been met for the password.
    overall = [boo,lower,upper,number,specialOne];
    overall = all(overall(:) > 0);
    
    
end


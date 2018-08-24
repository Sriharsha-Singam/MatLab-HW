function [ aHour, aMin ] = clockHands( cHour, cMin, num )
%CLOCKHANDS Summary of this function goes here
%   Detailed explanation goes here
    
   aHour = floor(mod((((cMin+num)./60)+cHour),12));
   aMin = mod((cMin+num),60);
    
end


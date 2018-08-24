function [ badApplesPercentage, badOrangesPercentage ] = applesAndOranges( apples, oranges, goodApples, goodOranges )
%APPLESANDORNGES Summary of this function goes here
%   Detailed explanation goes here
    badApples = apples - goodApples;
    badOranges = oranges - goodOranges;
    badApplesPercentage = round(((badApples./(apples+oranges))).*10000)./100;
    badOrangesPercentage = round(((badOranges./(apples+oranges))).*10000)./100;
    

end


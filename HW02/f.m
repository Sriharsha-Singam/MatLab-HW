function [ y ] = f( x )
%F Summary of this function goes here
%   Detailed explanation goes here

    partOne = 1.17.*(sqrt(1+(x.^0.9))) + sin((x.^2)-4);
    partTwo = 1.5.*exp((x.^2)-(x.*(abs(x))));
    y = partOne./partTwo;
end


function [ area ] = inscribe( side )
%INSCRIBE Summary of this function goes here
%   Detailed explanation goes here

    % Calculating the raduis which is half of the length of the side of the
    % square:
    radius = side / 2;

    % Calculating the area of the circle using the equation:
    areaOfCircle = pi .* (radius^2);

    % Calculating the area of the square:
    areaOfSquare = side ^ 2;
    
    % Calculating the left over area by the subtracting the area of the
    % circle from the area of the square:
    area = areaOfSquare - areaOfCircle;

    %Rounding the left over area to 2 decimals:
    area = area.*100;
    area = round(area);
    area = area./100;
end


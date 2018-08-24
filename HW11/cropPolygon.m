function cropPolygon( len, ang )
%CROPPOLYGON Summary of this function goes here
%   Detailed explanation goes here


%Setting x & y coordinate matrices
x = [0]
y = [0]

%Finding the angles that will be used -- from each reference point
ang = cumsum(ang)

for l = 1:length(len)
    %Finding the x & y coordiates for the next line segment
    newX = (len(l).*cosd(ang(l))+x(l))
    newY = (len(l).*sind(ang(l))+y(l))
    
    %Adding the x & y coordiates for the next line segment to the x & y
    %coordinates matrices
    x = [x newX]
    y = [y newY]
end

%Plotting the final x & y coordinates
plot(x,y,'k')
axis equal
axis off

end


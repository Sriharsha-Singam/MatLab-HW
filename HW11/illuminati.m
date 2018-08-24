function illuminati( hyp,ang )
%ILLUMINATI Summary of this function goes here
%   Detailed explanation goes here

    %Making in the plot
    hold on
    
    % Finding the value of x & y coordinates using the hypotenuse and angle
    x = hyp.*cosd(ang)
    y = hyp.*sind(ang)
    
    %Creating the coordinates of the plot
    totx = [0 x 0 0];
    toty = [0 0 y 0];
    
    %Creating the outer shell of the plot
    box on

    %Actually plotting the x & y coordinates as well as the EYE
    plot(totx,toty,'b')
    plotEye(hyp,ang)
    
    %Adjusting the axises to be equal
    axis equal
    
    %Switching off hold
    hold off
end


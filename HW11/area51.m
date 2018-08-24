function [ out ] = area51( vel,disAlien, days )
%AREA51 Summary of this function goes here
%   Detailed explanation goes here

    %Differentiating the graph of velocity vs. time to get acceleration
    a = diff(vel(2,:))./diff(vel(1,:))
    
    %Integrating the graph of velocity vs. time to get position
    d = cumtrapz(vel(1,:),vel(2,:))
    
    %Extracting the time from the array of vel
    t = vel(1,:)
    
    hold on
    
    %Plotting the graph of position vs. time
    subplot(3,1,1)
    plot(t,d,'b*-')
    box on
    %Defining the x & y limits
    ylim([0 max(d)])
    xlim([0 max(t)])
    %Setting the title and the axises labels
    title('Position vs. Time')
    xlabel('Time (s)')
    ylabel('Position (m)')
    
    %Plotting the graph of velocity vs. time
    subplot(3,1,2)
    plot(t,[vel(2,:)],'g+-')
    box on
    %Defining the x & y limits
    ylim([0 max(vel(2,:))])
    xlim([0 max(t)])
    %Setting the title and the axises labels
    title('Velocity vs. Time')
    xlabel('Time (s)')
    ylabel('Velocity (m/s)')
    
    %Plotting the graph of acceleration vs. time
    subplot(3,1,3)
    plot(t,[0 a],'rd-')
    box  on
    %Defining the x & y limits
    ylim([0 max(a)])
    xlim([0 max(t)])
    %Setting the title and the axises labels
    title('Acceleration vs. Time')
    xlabel('Time (s)')
    ylabel('Acceleration (m/s^2)')

    hold off
    
    %Finding the number of seconds of the days value
    time = days.*24.*60.*60
    
    %Intrepolation of the graph of position vs. time for the value of time
    %of the days
    distance = interp1(t,d,time,'linear','extrap')./1000
    
    %Checking if the plantet is a known alien planet or not
    if distance < disAlien(1) | distance > disAlien(2)
        out = 'This craft did not come from the known alien planet. Better luck next time!'
    else
        out = sprintf('You''ve found the alien planet! It is located %.2f km away.',distance)
    end
end


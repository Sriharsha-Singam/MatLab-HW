function [ coeff ] = isSeahavenReal( data, colors )
%ISSEAHAVENREAL Summary of this function goes heres
%   Detailed explanation goes here

    %Finding the x & y coordinates
    x = data(1,:)
    y = data(end,:)
    
    %Setting the counter value and the variable c that makes sure that the
    %while loop does not become an infinite loop
    counter = 0
    c = 0
    %Setting the variable coefficient, sums
    coeff = 1
    sums = []
    %Settign the subplot
    subplot(1,2,1)
    
    while c == 0
        %Getting the coefficient of the function of the graph for each
        %order.
        test = polyfit(x,y,counter)
        coeff = test
        
        %Checking the Sum of Absolute Errors based on which the loop will
        %exit or keep going
        if sum(abs(y - polyval(test,x))) < 0.00001
            c = 1
        else
            c = 0
        end
        
        %An array with all the values of the Sum of Absolute Errors
        sums = [sums sum(abs(y - polyval(test,x)))]
        
        %Incrementing the counter variable
        counter = counter + 1
        
        %Calculating the diameter and the buffer of 5%
        diameter = max(x)-min(x)
        buffer = (5.*diameter)./100
        %Finding the maximun and minimum limit of the x values with the
        %added 5% buffer
        ma = max(x) + buffer
        mi = min(x) - buffer
        %Finding 1000 different points that are equally spaced between the 
        %maximun and minimum limit 
        xs = linspace(mi,ma,1000);
        
        hold on
        
        %Finding the color for the particular order of the polynomial
        color = mod(counter,length(colors))
        if color == 0
            color = length(colors)
        end
        
        %Making sure the last order of the polynomial that fits the 
        %criteria is a black line on the graph && Also graphing all the
        %other orders of polynomials
        if c == 1
            plot(xs,polyval(test,xs),'k')
        else
            plot(xs,polyval(test,xs),colors(color))
        end
        
        box on
        axis tight
        
    end
    
    %Plotting truman's values of x in the graph
    plot(x,polyval(test,x),'k+')
    %Setting the x & y labels and the title
    xlabel('x')
    ylabel('y')
    title('Successive Approximations')
    hold off
    
    %Plotting the Sum of Absolute Errors
    hold on
    subplot(1,2,2)
    plot(0:(counter-1),sums,'k')
    box on
    %Setting the x & y labels and the title
    xlabel('degree')
    ylabel('sae')
    title('Sum of Absolute Errors')
    hold off
end
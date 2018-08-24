function [ out ] = flatEarth( vel, time )
%FLATEARTH Summary of this function goes here
%   Detailed explanation goes here
    
    %Getting the coefficients of the function for the graph of velocity vs.
    %time
    val = polyfit(time,vel,length(vel)-1)
    
    %Using the common formula for finding the integral of a function by
    %subtracting the power of x by one and then dividing each of them by
    %the power
    pows = length(val):-1:1;
    intVec = val./pows;
    
    %Whenever finding an integral, there is an unknown constant that is
    %usually pre-defined to a number like 0 in this case. This constant is
    %then added to the list of coefficients
    new = 0; 
    intVec = [intVec new];
    
    %Getting the sum of the coefficient -- Analytical integral
    out = sum(intVec)
    
    %Checking if the earth is round or flat
    if out >= 0
        out = 'Hmm... It seems the Earth is actually round.'
    elseif out<0
        out = 'The Earth is flat! I was right all along!'
    end
    
        
    
end


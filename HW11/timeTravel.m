function [ out ] = timeTravel( word, arr, yr )
%TIMETRAVEL Summary of this function goes here
%   Detailed explanation goes here

    %Finding the yr in relation with the x values
    yr = yr-1900
    
    %Extracting the x & y coordinates
    y = arr(2,:)
    x = arr(1,:)
   
    %Finding the numerical derivative of the graph of x & y
    d = diff(y)./diff(x)
    
    %Intrepolating the x & y graph for the particular year value and then
    %rounding it to the second decimal place
    li = interp1(x,y,yr)
    li = round(li,2)
    
    %Intrepolating the x & derivate of x & y graph for the particular year value
    val = interp1(x(1:end-1),d,yr)
    
    %Checking the popularity of the certain word in this particular year
    if li > 30
        if val < 0
            out = sprintf('''%s'' is a %.2f, you''ll fit right in! But don''t stay too long, it''s starting to decline.',word,li)
        else
            out = sprintf('You''re in the clear! ''%s'' is a %.2f and it''s on the rise.',word,li)
        end
    else
        out = sprintf('''%s'' is only a %.2f, you''ll never blend in!',word,li)
    end
        
end


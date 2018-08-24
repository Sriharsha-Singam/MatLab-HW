function [ winner ] = earthWindFire( one, two )
%EARTHWINDFIRE Summary of this function goes here
%   Detailed explanation goes here
    
    earth = 'earth';
    wind = 'wind';
    fire = 'fire';
    if strcmp(one,earth) & strcmp(two,wind)
        winner = 'Player 1 wins!';
    elseif strcmp(two,earth) & strcmp(one,wind)
        winner = 'Player 2 wins!';
    elseif strcmp(one,fire) & strcmp(two,wind)
        winner = 'Player 2 wins!';
    elseif strcmp(two,fire) & strcmp(one,wind)
        winner = 'Player 1 wins!';
    elseif strcmp(one,fire) & strcmp(two,earth)
        winner = 'Player 1 wins!';
    elseif strcmp(one,earth) & strcmp(two,fire)
        winner = 'Player 2 wins!';
    else length(one) == length(two)
        if one == two
            winner = 'It''s a tie!';
        end
    end
        

end


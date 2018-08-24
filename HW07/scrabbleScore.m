function [ winner ] = scrabbleScore( score1, score2 )
%SCRABBLESCORE Summary of this function goes here
%   Detailed explanation goes here

    var1 = 0;
    var2 = 0;
    for val = score1
        var1 = var1 + val
    end
    for val = score2
        var2 = var2 + val
    end
    
    winner = 'Oops'
    
    if var1 > var2
        winner = 'I am the Scrabble champion!'
    elseif var2 > var1
        winner = 'Beginner''s luck...'
    elseif var1 == var2
        winner = 'I challenge you to a rematch!'
    end

end


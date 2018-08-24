function [ out ] = war( player1, player2 )
%WAR Summary of this function goes here
%   Detailed explanation goes here

    l = length(player1)
    ind = 1;
    var = 0;
    while length(player1) < 12 & length(player1) > 0
        if player1(ind) > player2(ind)
            if player2(ind) == 2 & player1(ind) == 13
                
                player2 = [player2, player2(ind), player1(ind)]
                player2(ind) = []
                player1(ind) = []
            else
                player1 = [player1,player1(ind), player2(ind)]
                player2(ind) = []
                player1(ind) = []
            end
        else
            if player1(ind) == 2 & player2(ind) == 13
                player1 = [player1, player1(ind),player2(ind)]
                player2(ind) = []
                 player1(ind) = []
            else
               
                player2 = [player2, player2(ind),player1(ind)]
                player1(ind) = []
                 player2(ind) = []
            end
        end
%         ln = length(player1)
        var = var + 1
    end
    out = ''
    if length(player1) > length(player2)
        out = sprintf('Player 1 defeated player 2 in %d rounds.',var)
    else
       out = sprintf('Player 2 defeated player 1 in %d rounds.',var) 
    end
    
end


function [ winner, score ] = goFish( player1, player2, deck )
%GOFISH Summary of this function goes here
%   Detailed explanation goes here
 
    score = [0,0];
    play= 0;
%     deck = [deck,deck(1)]
%     deck(1) = []
    
    for num = player1
        player1
        if length(find(ismember(player1,num)))>1
            nums = find(player1 == num);
            nums1 = length(nums);
            moding = mod(nums1,2);
            scoring = floor(nums1/2);
            score(1) = score(1)+scoring;
            if moding == 0
                player1(nums) = [];
            elseif moding == 1
                player1(nums(1:end-1)) = [];
            end
        end
    end
    for num = player2
        player2
        if length(find(ismember(player2,num)))>1
            nums = find(player2 == num);
            nums1 = length(nums);
            moding = mod(nums1,2);
            scoring = floor(nums1/2);
            score(2) = score(2)+scoring;
            if moding == 0
                player2(nums) = [];
            elseif moding == 1
                player2(nums(1:end-1)) = [];
            end
        end
    end
    deck
    score
    while length(player1) > 0 & length(player2) > 0
        play = play + 1;
        player1 = player1;
        player2 = player2;
        deck = deck;
        if mod(play,2) == 0
            if length(find(player1 == player2(1))) > 0
                score(2) = score(2) + 1;
                player1(find(player1 == player2(1))) = [];
                player2(1) = [];
            elseif length(find(player2 == deck(1))) > 0
                player2 = [player2,player2(1)];
                player2(1) = [];
                player2(find(player2 == deck(1))) = [];
                score(2) = score(2) + 1;
                deck(1) = [];
%             elseif length(find(player2 == deck(1))) < 0
            else
                player2 = [player2,deck(1),player2(1)];
                player2(1) = [];
                deck(1) = [];
            end
        else
            if length(find(player2 == player1(1))) > 0
                score(1) = score(1) + 1;
                player2(find(player2 == player1(1))) = [];
                player1(1) = [];
            elseif length(find(player1 == deck(1))) > 0
                player1 = [player1,player1(1)];
                player1(1) = [];
                player1(find(player1 == deck(1))) = [];
                score(1) = score(1) + 1;
                deck(1) = [];
%             elseif length(find(player1 == deck(1))) < 0
            else
                player1 = [player1,deck(1),player1(1)];
                player1(1) = [];
                deck(1) = [];
            end
        end     
%         if play > 20
%             break;
%         end
        
    end
    score = score
    if score(1) > score(2)
        winner = 'Player 1 won!'
    elseif score(1) == score(2)
        winner = 'It''s a tie!'
    else
        winner = 'Player 2 won!'
    end

end


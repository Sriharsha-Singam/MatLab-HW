function [ win ] = blackJack( hand, deck,opp )
%BLACKJACK Summary of this function goes here
%   Detailed explanation goes here

    sumHand = sum(hand)
    while sumHand < opp
        sumHand = sum(hand)
        hand = [hand,deck(1)]
        deck(1) = []
    end
    win = 0;
    if sumHand > 21
        win = false;
    elseif sumHand >= opp
        win = true;
    end
end


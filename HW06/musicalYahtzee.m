function [ score, combo] = musicalYahtzee( diceNotes )
%MUSICALYAHTZEE Summary of this function goes here
%   Detailed explanation goes here
    
    [one,rest] = strtok(diceNotes, ' ')
    rest(1) = []
    [two,rest] = strtok(rest, ' ')
    rest(1) = []
    [three,rest] = strtok(rest, ' ')
    rest(1) = []
    [four,rest] = strtok(rest, ' ')
    rest(1) = []
    five = rest
    
    vecNotes = []
    
    vecNotes(1) = helper(one)
    vecNotes(2) = helper(two)
    vecNotes(3) = helper(three)
    vecNotes(4) = helper(four)
    vecNotes(5) = helper(five)
    
    [vecNotes,order] = sort(vecNotes,'ascend')
    difference = diff(vecNotes)
    
    ones = (difference == 1)
    one = length(find(ones == 1))
    
    zeros = (difference == 0)
    zero = length(find(zeros == 1))
    newZeros = diff(zeros)
    
    sumUp = sum(vecNotes)
    
    if zero == 2
        score = sumUp
        combo = 'I have a 3 of a Kind!'
    elseif zero == 3
        newZeros = diff(zeros)
        if newZeros(1) == -1 | newZeros(2) == -1 | newZeros(3) == -1
            if sumUp > 25
                combo = 'I have a 3 of a Kind!'
                score = sumUp
            else 
                combo = 'I have a Full House!'
                score = 25
            end
        else
           combo = 'I have a 4 of a Kind!' 
           score = sumUp
        end
    elseif zero == 4
        combo = 'HOORAY! MUSICAL YAHTZEE!'
        score = 50
    elseif one == 3
        combo = 'I have a Small Straight!'
        score = 30
    elseif one == 4
        combo = 'I have a Large Straight!'
        score = 40
    else
        combo = 'I have a Chance :('
        score = sumUp
    end
            
end

function [ out] = helper( stuff )
    out = 0
    switch stuff
        case 'thirty-second'
            out = 1
        case 'sixteenth'
            out = 2
        case 'eighth'
            out = 3
        case 'quarter'
            out = 4
        case 'half'
            out = 5
        case 'whole'
            out = 6
    end
end
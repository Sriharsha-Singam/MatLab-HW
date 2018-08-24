function [ win ] = hungerGames( scores )
%HUNGERGAMES Summary of this function goes here
%   Detailed explanation goes here

     scores = fopen(scores)


    if scores < 0 
       error('OOPS')
    end
    
    line = '';
    var = 0;
    playerScores = []
    playerNames = []
    colon = []
    while ischar(line)
        playerScores
        var = var + 1
        line = fgetl(scores);
        colon = find(line == ':')
        playerNames = [playerNames,',',line(1:colon-1)]
        playerNames1{var} = line(1:colon-1)

        newline = line(colon+1:end)
        player = []
        while length(newline) > 0
            [word,newline] = strtok(newline,',')
            player = [player,str2num(word)]
        end
        playerScores = [playerScores,(sum(player)./length(player))]
        
    end
    playerScores = round(playerScores)
    win = find(playerScores == max(playerScores))

    win = sprintf('%s is most favored to win with a score of %i!',playerNames1{win},round(playerScores(win)))
    
    playerNames
    space = find(playerNames == ',')
    playerNames = lower(playerNames)
    if (length(strfind(playerNames,'katniss'))>0)

        win = sprintf('Katniss Everdeen is most favored to win with a never before seen score of 11!')
    elseif (length(strfind(playerNames,'katniss everdeen'))>0)
        win = sprintf('Katniss Everdeen is most favored to win with a never before seen score of 11!')
    elseif (length(strfind(playerNames,'the girl on fire'))>0)
        win = sprintf('Katniss Everdeen is most favored to win with a never before seen score of 11!')
    end
    
end


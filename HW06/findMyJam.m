function [ decision ] = findMyJam( options, friends, spotify, stats )
%FINDMYJAM Summary of this function goes here
%   Detailed explanation goes here

%       decision = options(1)
    [option1,rest] = strtok(options,',')
    rest(find(rest == ',')) = []
    option2 = rest
    
%     [friend1,rest] = strtok(friends,',')
%     rest(1) = []
%     [friend2,rest] = strtok(rest,',')
%     rest(1) = []
%     friend3 = rest
    avgScore = (sum(stats(:,2)))/5
    [stat,order] = sort(stats(:,2),'descend')
    [spotify1,rest] = strtok(spotify,',')
    rest(1) = []
    [spotify2,rest] = strtok(rest,',')
    rest(1) = []
    [spotify3,rest] = strtok(rest,',')
    rest(1) = []
    [spotify4,rest] = strtok(rest,',')
    rest(1) = []
    spotify5 = rest
    
    spotifys = '#404 (oops)'
    switch order(1,1)
        case 1
            spotifys = spotify1
        case 2
            spotifys = spotify2
        case 3
            spotifys = spotify3
        case 4
            spotifys = spotify4
        case 5
            spotifys = spotify5
    end

    
    decision = '#404 (oops)'
    if contains(friends,option1) & contains(spotify,option1)
        decision = sprintf('%s will ignite the party!',option1)
    elseif ~contains(friends,option1) & contains(spotify,option1)
        switch option1
            case spotify1
                if stats(1,2) > avgScore
                    decision = sprintf('%s will ignite the party!',option1)
                else
                    decision = sprintf('%s will ignite the party!',spotifys) 
                end
            case spotify2
                if stats(2,2) > avgScore
                    decision = sprintf('%s will ignite the party!',option1)
                else
                    decision = sprintf('%s will ignite the party!',spotifys) 
                end
            case spotify3
                if stats(3,2) > avgScore
                    decision = sprintf('%s will ignite the party!',option1)
                else
                    decision = sprintf('%s will ignite the party!',spotifys) 
                end
            case spotify4
                if stats(4,2) > avgScore
                    decision = sprintf('%s will ignite the party!',option1)
                else
                    decision = sprintf('%s will ignite the party!',spotifys) 
                end
            case spotify5
                if stats(5,2) > avgScore
                    decision = sprintf('%s will ignite the party!',option1)
                else
                    decision = sprintf('%s will ignite the party!',spotifys) 
                end
            otherwise
                decision = sprintf('%s will ignite the party!',spotifys) 
        end   
    elseif contains(friends,option1) & ~contains(spotify,option1) 
        if contains(friends,option2) & contains(spotify,option2)
            decision = sprintf('%s will ignite the party!',option2)
        else
            decision = sprintf('%s will ignite the party!',option1)
        end
    elseif ~contains(friends,option1) & ~contains(spotify,option1)
        if contains(friends,option2) | contains(spotify,option2)
            decision = sprintf('%s will ignite the party!',option2)
        else
            decision = sprintf('%s will ignite the party!',spotifys)
        end
        
    end
    

end


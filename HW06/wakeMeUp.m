function [ possible ] = wakeMeUp( wakeUp, class, transport )
%WAKEMEUP Summary of this function goes here
%   Detailed explanation goes here

    [wakeHr,wakeMin] = strtok(wakeUp,':');
    index = find(wakeMin == ':');
    wakeMin(index) = [];
    wakeHr = str2num(wakeHr)
    wakeMin = str2num(wakeMin)
    
    [classHr,classMin] = strtok(class,':');
    index = find(classMin == ':');
    classMin(index) = [];
    classHr = str2num(classHr)
    classMin = str2num(classMin)
    
    wakeMin = wakeMin + wakeHr*60
    classMin = classMin + classHr*60
    if wakeMin > classMin
        possible = 'You overslept and missed your first class. Better set your alarm next time!';
    else
        remain = (classMin - wakeMin)
        if remain < 3
            possible = 'You rush to get to class by skateboarding, but sadly you are still late. Better set your alarm next time!';
        elseif remain >= 3 & remain < 10
            if ~strcmp(transport, 'stinger bus') & ~strcmp(transport, 'walking')
                possible = 'You rush and make it to class just in time by skateboarding. Nice!';
            else
               possible = sprintf('You rush to get to class by %s, but sadly you are still late. Better set your alarm next time!',transport); 
            end
        elseif remain >= 10 & remain < 15
            if ~strcmp(transport,'stinger bus')
                possible = sprintf('You rush and make it to class just in time by %s. Nice!',transport);
            else 
                possible = sprintf('You rush to get to class by %s, but sadly you are still late. Better set your alarm next time!',transport); 
            end
        elseif remain >= 15
            possible = sprintf('You rush and make it to class just in time by %s. Nice!',transport);
        end
    end
        
end


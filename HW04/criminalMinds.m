function [ suspect ] = criminalMinds( suspect1, suspect2, suspect3, suspect4 )
%CRIMINALMINDS Summary of this function goes here
%   Detailed explanation goes here
    
    oneAndTwo = suspect1 ~= suspect2;
    twoAndThree = suspect2 ~= suspect3;
    threeAndFour = suspect3 ~= suspect4;
    fourAndOne = suspect4 ~= suspect1;
    
    oneAndTwo = any(oneAndTwo(:) > 0);
    twoAndThree = any(twoAndThree(:) > 0);
    threeAndFour = any(threeAndFour(:) > 0);
    fourAndOne = any(fourAndOne(:) > 0);
    
    one = [oneAndTwo,fourAndOne];
    two = [oneAndTwo,twoAndThree];
    three = [twoAndThree,threeAndFour];
    four = [threeAndFour,fourAndOne];
  
    if(all(two(:)>0))
        suspect = sprintf('Suspect #%u is lying.',2);
    end
    if(all(three(:)>0))
        suspect = sprintf('Suspect #%u is lying.',3);
    end
    if(all(four(:)>0))
        suspect = sprintf('Suspect #%u is lying.',4);
    end
    if(all(one(:)>0))
        suspect = sprintf('Suspect #%u is lying.',1);
    end
%     final = [oneAndTwo,twoAndThree,threeAndFour,fourAndOne]
%     suspect = (final(:) == false)
%     suspect = find(suspect)
end


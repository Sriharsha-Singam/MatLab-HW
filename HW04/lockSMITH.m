function [ comb ] = lockSMITH( combs,rot, log )
%LOCKSMITH Summary of this function goes here
%   Detailed explanation goes here

    rot1 = rot(1);
    rot2 = rot1 + rot(2);
    rot3 = rot2 + rot(3);
    rot4 = rot3 + rot(4);
    rot5 = rot4 + rot(5);
    rotation = [rot1,rot2,rot3,rot4,rot5]
    rotation = mod(rotation,length(combs))
%     rotation(5) = 11
    zero = rotation(:) == 0;
    zero = find(zero);
    rotation(zero) = length(combs);
    newCombs = combs(rotation);
    
    log = log(:) == true;
    log = find(log);
    comb = newCombs(log);
    

end


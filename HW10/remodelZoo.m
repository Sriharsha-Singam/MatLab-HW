function [ out1 ] = remodelZoo( in )
%REMODELZOO Summary of this function goes here
%   Detailed explanation goes here

    %Finding dimensions of in
    [r,c] = size(in)
    
    %Creating a dummy struct meant to take in different values
    new(1) = struct('exhibit','1','people','2','time','3','rating','4','ugaRank','5','popularity','6')
    pops = []
    
    
    %Calculating popularity of each value in the original struct using 2
    %for loops
    
    for i = 1:r
        f = []
        
        for e = 1:c
            new(i,e) = struct(calcPopularity(in(i,e)))
            f = [f cell2mat({new(i,e).popularity})]         
        end
        pops = [pops sum(f)]
    end
    %Removing the field 'ugaRank'
    new = rmfield(new,'ugaRank')
    
    %Sorting the array with all the popularity numbers of each section in
    %descending order
    [x,y] = sort(pops,'descend')
    
    %Making a new struct in the the new order of the old struct using the
    %new indices that came from the sorting^
    out1 = new(y,:)
end


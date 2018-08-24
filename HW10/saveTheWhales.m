function [ out ] = saveTheWhales( in )
%SAVETHEWHALES Summary of this function goes here
%   Detailed explanation goes here
    
    %Converting cell array to a double matrix
    alpha = double(cell2mat(fieldnames(in)'))
    
    % Finding difference between each of the values in the matrix "alpha"
    % and the indices that are greater than 1
    dif = diff(double(cell2mat(fieldnames(in)')))
    dif1 = find(dif>1)
    
    % For loop to find the discrepencies in the missing letters in the
    % struct and adds in the remaining letters along with their appropriate
    % numbers using linspace()
    rest = []
    for i = 1:length(dif1)
        one = [];
        in
        
        %Finding the letters between which 
        ind = char(alpha(dif1(i):dif1(i)+1))
        for j = ind
            one = [one getfield(in,j)]
        end
        %Using linspace and making an array with the final values that need
        %to be added to the struct
        dif2 = dif(find(dif>1))+1
        final = linspace(one(1),one(2),dif2(i))
        z = alpha(dif1(i)):alpha(dif1(i)+1)
        z(1) = []
        z(end) = []
        final(1) = []
        final(end)=[]
        z = char(z)
        
        %Setting the new field and the the new values into the original
        %struct
        for x = 1:length(z)
            fin = round(final(x).*100)./100
            in = setfield(in,z(x),fin)
        end
    end  
    out = in
end


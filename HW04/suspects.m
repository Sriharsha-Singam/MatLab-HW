function [ mistaken, index ] = suspects( initials, suspect )
%SUSPECTS Summary of this function goes here
%   Detailed explanation goes here

     vector =  suspect(:) == false;     
     vector = find(vector);
     s = length(vector);
      
      initials = strrep(initials,' ','');
      vector = sort(reshape(vector,[1,s]));
       initials = (vec2mat(initials,2));
        i = initials(1,:);
     new = (initials((vector(1:s)),:));
     [sorted,indices] = sort(new((1:s),1));
     final = [sorted,new(indices,2)];
     finale(1:3:s*3) = final((1:s),1);
     finale(2:3:s*3) = final((1:s),2);
     finale(3:3:s*3) = ' ';
     
     mistaken = finale;
     index =  sort(reshape(find(suspect(:) == true),[1,length((find(suspect(:) == true)))]));
  
end


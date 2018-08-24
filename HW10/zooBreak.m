function [ st,out ] = zooBreak( st, animal )
%ZOOBREAK Summary of this function goes here
%   Detailed explanation goes here

%Get all places from struct and put it into a cell array which is then
%reshaped
place = {st(:).Place};
place = reshape(place,size(st));

%Finding indices for the place: zoo
[r,c] = find(strcmp(place, 'zoo'))

%Get all inhabitants from struct and put it into a cell array which is then
%reshaped
inhabit = {st(:).Inhabitants}
inhabit = reshape(inhabit,size(st))

%Finding indices for the inhabitants: the animal in the input variable
%animal
[r1,c1] = find(strcmp(inhabit,animal))


st(strcmp(inhabit,animal)).Inhabitants = [];
st(strcmp(place, 'zoo')).Inhabitants = [st(strcmp(place, 'zoo')).Inhabitants {animal}];

%Finding the distance of the escaped animal
out = sqrt((r-r1).^2 + (c-c1).^2);
end


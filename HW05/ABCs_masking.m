% DO NOT CHANGE THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [A, B, C, D, E, F, G] = ABCs_masking(arr1, arr2)

% Write the code to satisify the following directions. For each part, store
% your answer in the variable that is specified within the parantheses. 
%   Ex. Add 1 + 1 and store it in (GT).
% That means store the value of 1 + 1 in the variable GT. 

%   1. arr1 - An array of numbers 
%   2. arr2 - An array of numbers

%    full array, and get an array of logical data. This is also called a
%    "mask", and the act of using a mask to manipulate an array is called 
%    "masking". Create a mask of where arr1 is equal to 0. (A)
A = (arr1 == 0);
%    Indexing (or masking), which is where one uses a mask to index an array 
%    of the same size (and usually the array that was used to create the mask 
%    in the first place). Use the mask you created in part A to assign a 1 
%    into all the indices of arr1 that are 0. Assign the new arr1 to 
%    output B. (B)
arr1(find(arr1 == 1)) = 1;
%    mask (or logical array) of where arr1 contains an even number. (C)
C = mod(arr1, 2) == 0;
%    the same size as the mask, and (if using the mask to index on both sides
%    of the equal sign) values from one array can be assigned into the
%    corresponding indices of another array. Using your mask, C, assign the
%    even values in arr1 into the corresponding indices of arr2. Then assign
%    the modified arr2 to output D. (D)

%    will simply perform an element-by-element "and" or "or" operation. Use
%    this to find a mask of where both A and C are true. (Note: && and ||
%    will NOT work with masks. Those are for single true/false values.) (E)
E = A & C;
%    another logical array of the same size, but logical true values
%    replaced with falses and logical false values replaces with trues. Use
%    this to find a mask where A is false. (F)
F = ~A;
%    both A and C are false. (G)
G = ~(E);
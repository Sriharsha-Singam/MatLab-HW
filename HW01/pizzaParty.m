function [ npp, left ] = pizzaParty( p, np )


    %Finding the number of slices of pizza per person by calculating the
    %number of slices of pizza and dividing that by the number of people:
    npp = (np .* 8) ./ p;

    %Rounding down the number of slices of pizza per person: 
    npp = floor(npp);

    % Calculating the number of slices of pizza left over after everyone
    % has eaten using modulus:
    left = mod((np .* 8), p);
  

end


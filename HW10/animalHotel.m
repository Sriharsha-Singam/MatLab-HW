function [ out ] = animalHotel( arr )

    %Using function cellstruct() to convert the inputed cell array to a
    %struct.
    %The input values are Headers and All the values.
    out = cell2struct(arr(2:end,:),arr(1,:),2)';
end


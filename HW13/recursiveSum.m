function [ sum ] = recursiveSum( vec )
if length(vec) > 1
    vec(end-1) = vec(end-1) + vec(end)
    vec(end) = []
     sum = recursiveSum( vec )
else
    sum = vec
end
end


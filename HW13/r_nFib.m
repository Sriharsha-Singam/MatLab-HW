function [ out ] = r_nFib( begin, num )
%R_NFIB Summary of this function goes here
%   Detailed explanation goes here
    arr = [];
    if begin == 0 | begin == 1
        arr = [begin,1];
    else
        arr = [begin,begin];
    end
    if num == 1
        arr = [begin];
        out = arr;
    else
        out = fib(num-length(arr),arr)
    end
    

end

function [ out ] = fib( num,arr )

    if num == 0
        out = arr;
    else
        arr = [arr,(arr(end-1)+arr(end))]
        out = fib(num-1,arr);
    end
end
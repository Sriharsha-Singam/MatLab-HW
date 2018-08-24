function [ out ] = celery( in )
%CELERY Summary of this function goes here
%   Detailed explanation goes here
    [r,c] = size(in)
    ranks = []
    in1 = in
    in1(:,3) = []
%     for row = 1:r
%         in1{row,3}(1,:) = []
%     end
    for row = 1:r
        rank = in{row,3}
        finding = find(rank == 1)
        it = in(finding,2)
        in1(row,2) = it

    end
    emptyCells = cellfun('isempty', in1); 

    in1(all(emptyCells,2),:) = []
    out = in1
    
end


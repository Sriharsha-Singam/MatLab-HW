function [ out ] = compAIRCountour( vector, vector1 )
%COMPAIRCOUNTOUR Summary of this function goes here
%   Detailed explanation goes here
    diff1 = diff(vector)
    diff2 = diff(vector1)
%     diff1 = abs(diff1)
%     diff2 = abs(diff2)
    one = diff1./abs(diff1)
    two = diff2./abs(diff2)
    out = isequaln(one,two)

end


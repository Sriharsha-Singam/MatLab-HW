function [ out ] = dragRace( time, vel, car,dist )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    t = []
    a = []
    [r,c] = size(time)
    for row= 1:r
        d = cumtrapz(time(row,1:end),vel(row,1:end))
        time(row,:)
        t = [t interp1(d, time(row,:), dist)]
%         dis = [dis ;cumtrapz(time(row,1:end),vel(row,1:end))]
        a = [a ;(diff(vel(row,1:end))./diff(time(row,1:end)))]
    end
    tim = find(t == min(t))
    [r,c] = size(a)
    ac = find(a == max(reshape(a,[1,r*c])))
    [i,j] = ind2sub([r,c],ac)
    
    acc = car{i}
    ti = car{tim}
    car
    out = sprintf('The %s won the %i meter race in %0.1f seconds! The %s had the fastest acceleration at %0.1f m/s^2!',ti,dist,t(tim),acc,a(i,j));
end


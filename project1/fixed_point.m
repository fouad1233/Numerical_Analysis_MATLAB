function [outputArg1,outputArg2] = fixed_point(fx,p0,iteration_number)
%FİXED_POİNT Summary of this function goes here
%   Detailed explanation goes here
p_all = [];
fp_all = [];
p = p0;
for i = 1:iteration_number
    p_all(end+1) = p;
    fp_all(end + 1) = fx(p);
    p = fx(p);
    %xline(p);
end
outputArg1 = p_all;
outputArg2 = fp_all;
end


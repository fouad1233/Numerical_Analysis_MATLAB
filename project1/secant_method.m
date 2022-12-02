function [outputArg1,outputArg2] = secant_method(f, p0 ,p1 ,iteration_num)
%SECANT_METHOD Summary of this function goes here
%   f is matlab function (numeric)

p_all =[p0 p1];
fp_all = [f(p0) f(p1)];
for i=3:iteration_num
    p = p_all(i-1) - ( ( f(p_all(i-1)) * ( p_all(i-1) - p_all(i-2) ) )/...
        (f(p_all(i-1)) - f(p_all(i-2)) ) ) ;
    p_all(end + 1) = p;
    fp_all(end + 1) = f(p);
end
outputArg1 = p_all;
outputArg2 = fp_all;
end


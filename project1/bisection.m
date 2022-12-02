function [outputArg1,outputArg2,outputArg3,outputArg4] = bisection(f,interval , iteration_number)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a_all = [];
b_all = [];
p_all = [];
fp_all = [];
a = interval(1);
%a_all(end + 1) = a;
b = interval(2);
%b_all(end + 1) = b;
for i = 1:iteration_number
    p = (a + b)/2;
    a_all(end + 1) = a;
    b_all(end + 1) = b;
    p_all(end + 1) = p;
    fp_all(end + 1) = f(p);
    %xline(p);
    
    if f(a) * f(p)  < 0 
            b = p ;
    elseif f(b) * f(p) < 0 
            a = p ;
    end
    
end
a_all(end + 1) = a;
b_all(end + 1) = b;
p_all(end + 1) = p;
fp_all(end + 1) = f(p);

outputArg1 = a_all;
outputArg2 = b_all;
outputArg3 = p_all ;
outputArg4 = fp_all;
end
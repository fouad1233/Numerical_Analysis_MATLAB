function [outputArg1] = newton(xvalues,k)
%newton Summary of this function goes here
%   Detailed explanation goes here
syms x real;
result = 1;

for i=1:k-1
    result = result * (x - xvalues(i));
end
outputArg1 = result;
end


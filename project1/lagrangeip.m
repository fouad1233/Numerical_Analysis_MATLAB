function [outputArg1] = lagrangeip(xvalues, yvalues ,n)
%lagrangeip Summary of this function goes here
%   Detailed explanation goes here
syms x real;
interpolationp = 0;
for k= 0:n
    interpolationp = interpolationp + ...
        lagrange(xvalues , n , k) * yvalues(k+1);
    
outputArg1 = expand(interpolationp); % expand function able us to multiply
% all and summ all the similiar terms

end


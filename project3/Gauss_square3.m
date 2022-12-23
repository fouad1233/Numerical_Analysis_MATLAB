function [outputArg1] = Gauss_square3(a,b,f)
%Gauss_square3 Summary of this function goes here
%   Detailed explanation goes here
outputArg1 = ((5/9)*f( ((b-a)*(-0.7746) + (b+a))/2 ) +(8/9)* f( ((b-a)*(0) + (b+a))/2 ) + (5/9)*f( ((b-a)*(0.7746) + (b+a))/2 ))*((b-a)/2);
end
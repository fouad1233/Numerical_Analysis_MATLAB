function [outputArg1] = Gauss_square2(a,b,f)
%GAUSS_SQUARE2 Summary of this function goes here
%   Detailed explanation goes here
outputArg1 = (f( ((b-a)*(1/sqrt(3)) + (b+a))/2 ) + f( ((b-a)*(-1/sqrt(3)) + (b+a))/2 ))*((b-a)/2);

end


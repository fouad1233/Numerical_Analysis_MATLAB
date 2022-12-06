function [outputArg1] = lvektor(L,fi,xfi,yfi,ax,ay)
%LVEKTOR Summary of this function goes here
%   Detailed explanation goes here
outputArg1 = (1./L).*(ax.*diff(xfi,fi)+ ay.*diff(yfi,fi));
end


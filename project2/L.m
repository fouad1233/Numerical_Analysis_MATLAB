function [outputArg1] = L(xfi,yfi,fi)
%L Summary of this function goes here
%   Detailed explanation goes here
outputArg1 = sqrt(diff(xfi,fi)^2 + diff(yfi,fi)^2);
end


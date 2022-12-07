function [outputArg1] = lvektor(L,difxfi,difyfi,ax,ay)
%LVEKTOR Summary of this function goes here
%   Detailed explanation goes here
outputArg1 = (1./L(difxfi,difyfi)).*(ax.*difxfi+ ay.*difyfi);
end


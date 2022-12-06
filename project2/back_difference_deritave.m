function [outputArg1] = back_difference_deritave(f,x0, h)
%BACK_DİFFERENCE_DERİTAVE Summary of this function goes here
%   Detailed explanation goes here
outputArg1 = (f(x0 - h) - f(x0))/-h;

end


function [outputArg1] = three_point_middle_point(f,x0,h)
%THREE_POİNT_MİDDLE_POİNT Summary of this function goes here
%   Detailed explanation goes here
outputArg1 = (1/(2.* h)) .* (f(x0+h) -f(x0-h) );
end


function [outputArg1] = three_point_end_point(f,x0, h)
%THREE_POİNT_END_POİNT Summary of this function goes here
%   Detailed explanation goes here
outputArg1 = ((1/(2*h))) * (-3.*f(x0) + 4.*f(x0+ h) -f(x0+2.*h));

end


function [outputArg1] = p(fi)
%P Summary of this function goes here
%   fi is element [0,2*pi]
outputArg1 = (abs(cos(3.*fi/4)).^8 + abs(sin(3.*fi/4)).^8).^(-1/4);

end


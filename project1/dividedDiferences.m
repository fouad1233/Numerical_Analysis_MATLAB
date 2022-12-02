function [outputArg1] = dividedDiferences(xvalues,yvalues)
%DİVİDEDDİFERENCES Summary of this function goes here
%   Detailed explanation goes here
if length(xvalues) ==1
    result = yvalues(1);
else
    result = (dividedDiferences(xvalues(2:end),yvalues(2:end)) ...
        - dividedDiferences( xvalues(1:end - 1),yvalues(1:end - 1) ) )/...
        (xvalues(end) - xvalues(1) );
end
outputArg1 = result;
end


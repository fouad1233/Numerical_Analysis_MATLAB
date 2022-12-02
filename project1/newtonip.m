function [outputArg1] = newtonip(xvalues,yvalues, n)
%NEWTONİP Summary of this function goes here
%   Detailed explanation goes here
func = 0;
for i = 1:n+1
    func = func + (dividedDiferences(xvalues(1:i) ,yvalues(1:i)) ...
        * newton(xvalues,i));
end

outputArg1 = expand(func);

end


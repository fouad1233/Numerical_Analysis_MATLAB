function [outputArg1] = lagrange(xvalues,n,k)
%LAGRANGE Summary of this function goes here
%   xvalues and yvalues are arrays 
%   n is the degree of function
syms x real;

result = 1 ;
for i = 1:n+1 %I add 1 to k because in matlab when we parse arrays we start with 1 not 0 like python or C
    if k+1 ~= i
        result = result * ( (x-xvalues(i))/ (xvalues(k+1) - xvalues(i))  );
    end
end
outputArg1 = result;

end


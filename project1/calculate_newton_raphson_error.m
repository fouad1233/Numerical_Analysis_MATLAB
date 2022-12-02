function [outputArg1,outputArg2] = calculate_newton_raphson_error(f,p0,p,inteval)
%CALCULATE_NEWTON_RAPHSON_ERROR Summary of this function goes here
%   f is symbolic function
result = (diff(diff(f))/2) * ((p - p0)^2);
delta = 0.0001;
func_result = matlabFunction(result);
value_of_result = [];
for i=inteval(1):delta:inteval(2)
    value_of_result(end + 1 ) = func_result(i);
end
numeric_result = max(value_of_result);

outputArg1 =numeric_result ;
outputArg2 = result;

end


function [outputArg1,outputArg2] = newton_raphson(f,p0,iteration_num)
%NEWTON_RAPHSON Summary of this function goes here
%   f is symbolic function
f_n = matlabFunction(f);%fn is numeric function
df = diff(f);
df_n = matlabFunction(df);

p = p0;
p_all = [p0];
fp_all = [f_n(p0)];
for i= 1:iteration_num
    p = p - (f_n(p) / df_n(p));
    p_all(end + 1) = p;
    fp_all(end+1) = [f_n(p)];
end
outputArg1 = p_all;
outputArg2 = fp_all;
end


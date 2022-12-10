function [outputArg1] = Hermit(p,interval,fi,N )
%HERMİT Summary of this function goes here
%   N is the number of intervals
interval_points= linspace(interval(1), interval(2), N);
syms a0 a1 a2 a3 ;
H3 = @(x) a0 + a1.*x + a2.*x.^2 + a3*x.^3;
H3_d =@(x) a1 + a2.*2.*x + a3.*3.*x.^2 ;

for i =1 :N -1
    a = interval_points(i);
    b = interval_points(i+1);
    hs = solve([H3(a)==p(a), H3_d(a)==three_point_middle_point(@p,a,0.000000001),...
        H3(b) ==p(b) , H3_d(b) == three_point_middle_point(@p,b,0.000000001)]...
        ,[a0, a1, a2, a3]);
    
    H{1,i} = double([hs.a0 , hs.a1 ,hs.a2 ,hs.a3]);
end

y= [];
for i=1:length(fi) 
    for j= 1: length(interval_points) -1
        if fi(i) <= interval_points(j+1) && fi(i) >=interval_points(j)
            y(i) = sum(cell2mat(H(1,j)) .* [1,fi(i),fi(i)^2,fi(i)^3],"all");
        end
    end

outputArg1 = y;

end


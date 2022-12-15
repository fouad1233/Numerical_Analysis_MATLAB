function [y] = cubicSpline(f,fi,interval,n )
%CUBİCSPLİNE Summary of this function goes here
%   Detailed explanation goes here
xs = linspace(interval(1), interval(2), n+1);
syms a0 b0 c0 d0 a1 b1 c1 d1 x;
S_list = {};
for i= 1:n-1
    x0 = xs(i);
    x1 = xs(i+1);
    x2 = xs(i+2);
    s0= a0+b0*(x-x0)+c0*((x-x0))^2+d0*((x-x0))^3;
    s1= a1+b1*(x-x1)+c1*((x-x1))^2+d1*((x-x1))^3;
    eq1 = subs(s0,x0) == f(x0);
    eq2 = subs(s0,x1) == f(x1);
    eq3 = subs(s1,x1) == f(x1);
    eq4 = subs(s1,x2) == f(x2);
    eq5 = subs(diff(s0),x1) == subs(diff(s1),x1);
    eq6 = subs(diff(diff(s0)),x1) == subs(diff(diff(s1)),x1);
    %natural 
    eq7 = subs(diff(diff(s0)),x0) == 0;
    eq8 = subs(diff(diff(s1)),x2) == 0;
    [A,B]=equationsToMatrix([eq1,eq2,eq3,eq4,eq5,eq6,eq7,eq8],[a0,b0,c0,d0,a1,b1,c1,d1]);
    C = linsolve(A,B);
    a2=C(1);
    b2=C(2);
    c2=C(3);
    d2=C(4);
    a3=C(5);
    b3=C(6);
    c3=C(7);
    d3=C(8);
    
    s0= a2+b2*(x-x0)+c2*((x-x0))^2+d2*((x-x0))^3;
    s1= a3+b3*(x-x1)+c3*((x-x1))^2+d3*((x-x1))^3;
    %y_sss(i) = subs(s0,fi(i));
    S_list{1,i} = double([a2,b2,c2,d2]);
    if i == n -1
        S_list{1,n} = double( [a3,b3,c3,d3] ) ;
    end
        
end
for i=1:length(fi) 
    for j= 1: length(xs) -1
        if fi(i) <= xs(j+1) && fi(i) >=xs(j)
            y(i) = sum(cell2mat(S_list(1,j)) .* [1,(fi(i)-xs(j)),(fi(i)-xs(j))^2,(fi(i)-xs(j))^3],"all");
        end
    end
end

end


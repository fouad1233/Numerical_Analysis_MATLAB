fi = linspace(0,2*pi,360);
plot(fi,p(fi));
hold on;
%%
syms a0 a1 a2 a3 ;
H3 = @(x) a0 + a1.*x + a2.*x.^2 + a3*x.^3;
H3_d =@(x) a1 + a2.*2.*x + a3.*3.*x.^2 ;
N = 2;
fi = linspace(0,2.08,N+1);

H ;
for i =1 :N 
    a = fi(i);
    b = fi(i+1);
    hs = solve([H3(a)==p(a), H3_d(a)==three_point_middle_point(@p,a,0.000000001),...
        H3(b) ==p(b) , H3_d(b) == three_point_middle_point(@p,b,0.000000001)]...
        ,[a0, a1, a2, a3]);
    
    H{1,i} = double([hs.a0 , hs.a1 ,hs.a2 ,hs.a3]);
end
fis = linspace(1e-32,2*pi,360);
y= [];
for i=1:length(fis)
    if fis(i) < 1.04 &&fis(i) >=0
        y(i) = sum(cell2mat(H(1,1)) .* [1,fis(i),fis(i)^2,fis(i)^3],"all");
    elseif fis(i) < 2.08 &&fis(i) >1.04
        y(i) = sum(cell2mat(H(1,2)) .* [1,fis(i),fis(i)^2,fis(i)^3],"all");
    elseif fis(i) < 3.12 &&fis(i) >2.08
        y(i) = sum(cell2mat(H(1,1)) .* [1,fis(i)-2.08,(fis(i)-2.08)^2,(fis(i)-2.08)^3],"all") ;
    elseif fis(i) < 4.16 &&fis(i) >3.12
        y(i) = sum(cell2mat(H(1,2)) .* [1,fis(i)-2.08,(fis(i)-2.08)^2,(fis(i)-2.08)^3],"all") ;
    
    elseif fis(i) < 5.20 &&fis(i) >4.16
        y(i) = sum(cell2mat(H(1,1)) .* [1,fis(i)-2*2.08,(fis(i)-2*2.08)^2,(fis(i)-2*2.08)^3],"all") ;
    elseif fis(i) < 6.28 &&fis(i) >5.20
        y(i) = sum(cell2mat(H(1,2)) .* [1,fis(i)-2*2.08,(fis(i)-2*2.08)^2,(fis(i)-2*2.08)^3],"all") ;
    
    end

end
plot(fis(1:359),y)
%% hata
plot(fis(1:359), (y - p(fis(1:359) )) ./ p(fis(1:359)))
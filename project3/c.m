fi = linspace(0,2*pi,360);
p_fi = p(fi);
x0 = linspace(0,2*pi,360);
n = 180;
spline_values = cubicSpline(@p  ,fi, [0,2*pi] , n);
%%
plot(x0 , p(x0))
hold on
plot(x0,spline_values ,"*", "MarkerIndices",1:2:360)
%%
figure;
plot(x0,(spline_values - p(fi))./p(fi)  )
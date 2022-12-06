fi = linspace(0,2*pi,360);
%polarplot(fi,p(fi));
x = p(fi) .* cos(fi);
y = p(fi) .* sin(fi);
plot(x,y)

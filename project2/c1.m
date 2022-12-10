fi = linspace(0,2*pi,360);
plot(fi,p(fi));
hold on;
%%
N = 360;
interval = [0 2*pi];
fis = linspace(0,2*pi,360);
y = Hermit(@p, interval ,fis,N );
%%
plot(fis,y,'*','MarkerIndices',1:3:length(y))
%% hata
plot(fis, (y - p(fis )) ./ p(fis))
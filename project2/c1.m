fi = linspace(0,2*pi,360);
plot(fi,p(fi));
hold on;
%%
N = 180;
interval = [0 2*pi];
fis = linspace(0,2*pi,360);
y = Hermit(@p, interval ,fis,N );
%%
plot(fis(1:359),y,'*','MarkerIndices',1:3:length(y))
%% hata
plot(fis(1:359), (y - p(fis(1:359) )) ./ p(fis(1:359)))
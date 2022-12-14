fi = linspace(0,2*pi,360);
x_p =@(fi) p(fi) .*cos(fi);
y_p =@(fi) p(fi) .*sin(fi); 
dxfi_dfi_m = three_point_middle_point(x_p,fi,fi(2));
dyfi_dfi_m = three_point_middle_point(y_p,fi,fi(2));

dh =@(L,fi,difxfi, difyfi) lx(L,difxfi, difyfi) .* cos(fi)...
    + ly(L,difxfi, difyfi) .* sin(fi);

y_h = Hermit(@p,[0,2*pi],fi,360); 
xh =@(fi) y_h .*cos(fi);
yh =@(fi) y_h .*sin(fi); 

valueofdh_p=dh(@L,fi,dxfi_dfi_m,dyfi_dfi_m);

%%
polarplot(fi,valueofdh_p)


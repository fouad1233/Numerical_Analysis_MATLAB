fi = linspace(0,2*pi,360);
dh =@(L,fi,difxfi, difyfi) lx(L,difxfi, difyfi) .* cos(fi)...
    + ly(L,difxfi, difyfi) .* sin(fi);

y_h_n = Hermit(@p,[0,2*pi],fi,360);
%%
xh =@(fi) y_h_n .* cos(fi);
yh =@(fi) y_h_n .* sin(fi); 
%%
dxfi_dfi_m_h_n = three_point_middle_point(xh,fi,fi(2));
dyfi_dfi_m_h_n = three_point_middle_point(yh,fi,fi(2));


valueofdh_h=dh(@L,fi,dxfi_dfi_m_h_n,dyfi_dfi_m_h_n);
%%
polarplot(fi,valueofdh_h)


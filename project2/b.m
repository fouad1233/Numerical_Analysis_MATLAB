fi = linspace(0,2*pi,360);
x =@(fi) p(fi) .*cos(fi);
y =@(fi) p(fi) .*sin(fi); 
%%
dxfi_dfi_f = forward_difference_deritave(x,fi,fi(2));
dyfi_dfi_f = forward_difference_deritave(y,fi,fi(2));
polarplot(lx(@L,dxfi_dfi_f, dyfi_dfi_f), ly(@L, dxfi_dfi_f,dyfi_dfi_f) )
%%
g_f = forward_difference_deritave(@p,fi,fi(2));
polarplot(fi, g_f)
%%
dxfi_dfi_b = back_difference_deritave(x,fi,fi(2));
dyfi_dfi_b = back_difference_deritave(y,fi,fi(2));
polarplot(lx(@L,dxfi_dfi_b, dyfi_dfi_b), ly(@L, dxfi_dfi_b,dyfi_dfi_b) )
%%
g_b = back_difference_deritave(@p,fi,fi(2));
polarplot(fi, g_b)
%%
dxfi_dfi_e = three_point_end_point(x,fi,fi(2));
dyfi_dfi_e = three_point_end_point(y,fi,fi(2));
polarplot(lx(@L,dxfi_dfi_e, dyfi_dfi_e), ly(@L, dxfi_dfi_e,dyfi_dfi_e) )
%%
g_e = three_point_end_point(@p,fi,fi(2));
polarplot(fi, g_e)
%%
dxfi_dfi_m = three_point_middle_point(x,fi,fi(2));
dyfi_dfi_m = three_point_middle_point(y,fi,fi(2));polarplot(lx(@L,dxfi_dfi_e, dyfi_dfi_e), ly(@L, dxfi_dfi_e,dyfi_dfi_e) )
polarplot(lx(@L,dxfi_dfi_m, dyfi_dfi_m), ly(@L, dxfi_dfi_m,dyfi_dfi_m) )
%%
g_m = three_point_middle_point(@p,fi,fi(2));
polarplot(fi, g_m)

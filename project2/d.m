fi = linspace(0,2*pi,360);
y_h = Hermit(@p,[0,2*pi],fi,360); 
x =@(fi) y_h .*cos(fi);
y =@(fi) y_h .*sin(fi); 
%%
t = tiledlayout(2,4);

dxfi_dfi_f = forward_difference_deritave(x,fi,fi(2));
dyfi_dfi_f = forward_difference_deritave(y,fi,fi(2));
nexttile
polarplot(lx(@L,dxfi_dfi_f, dyfi_dfi_f), ly(@L, dxfi_dfi_f,dyfi_dfi_f) )
title("lx and ly forward difference")

h= fi(2);
g_f = ( y_h(2:360) - y_h(1:359)  )./h;
nexttile
polarplot(fi(1:359), g_f)
title("g forward difference")

dxfi_dfi_b = back_difference_deritave(x,fi,fi(2));
dyfi_dfi_b = back_difference_deritave(y,fi,fi(2));
nexttile
polarplot(lx(@L,dxfi_dfi_b, dyfi_dfi_b), ly(@L, dxfi_dfi_b,dyfi_dfi_b) )
title("lx and ly back difference")

h= fi(2);
g_b = (  y_h(1:359) - y_h(2:360)  )./ -h;
nexttile
polarplot(fi(2:360), g_b)
title("g back difference")

dxfi_dfi_e = three_point_end_point(x,fi,fi(2));
dyfi_dfi_e = three_point_end_point(y,fi,fi(2));
nexttile
polarplot(lx(@L,dxfi_dfi_e, dyfi_dfi_e), ly(@L, dxfi_dfi_e,dyfi_dfi_e) )
title("lx and ly three point end point")

h= fi(2);
g_e = (1/(2*h)) * (-3*y_h(1:358) + 4*y_h(2:359) -y_h(3:360));
nexttile
polarplot(fi(1:358), g_e)
title("g three point end point")

dxfi_dfi_m = three_point_middle_point(x,fi,fi(2));
dyfi_dfi_m = three_point_middle_point(y,fi,fi(2));
nexttile
polarplot(lx(@L,dxfi_dfi_m, dyfi_dfi_m), ly(@L, dxfi_dfi_m,dyfi_dfi_m) )
title("lx and ly middle point")

h= fi(2);
g_m = (1/(2* h)) * (y_h(3:360) -y_h(1:358) );
nexttile
polarplot(fi(2:359), g_m)
title("g middle point")

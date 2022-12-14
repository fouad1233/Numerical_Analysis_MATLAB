fi = linspace(0,2*pi,360);
y_h = Hermit(@p,[0,2*pi],fi,360); 
xh =@(fi) y_h .*cos(fi);
yh =@(fi) y_h .*sin(fi); 

%%
p_fi = p(fi);
x =@(fi) p_fi .*cos(fi);
y =@(fi) p_fi .*sin(fi); 
%%
t = tiledlayout(2,4);

dxfi_dfi_f_h = forward_difference_deritave(xh,fi,fi(2));
dyfi_dfi_f_h = forward_difference_deritave(yh,fi,fi(2));

dxfi_dfi_f = forward_difference_deritave(x,fi,fi(2));
dyfi_dfi_f = forward_difference_deritave(y,fi,fi(2));

nexttile
%%
polarplot(lx(@L,dxfi_dfi_f_h, dyfi_dfi_f_h), ly(@L, dxfi_dfi_f_h,dyfi_dfi_f_h) )
hold on 
polarplot(lx(@L,dxfi_dfi_f, dyfi_dfi_f), ly(@L, dxfi_dfi_f,dyfi_dfi_f) ,"*",'MarkerIndices',1:3:length(ly(@L, dxfi_dfi_f,dyfi_dfi_f)))
%%

%polarplot(lx(@L,dxfi_dfi_f, dyfi_dfi_f)  , ly(@L, dxfi_dfi_f_h,dyfi_dfi_f_h) -ly(@L, dxfi_dfi_f,dyfi_dfi_f) ./ ly(@L, dxfi_dfi_f,dyfi_dfi_f) )
title("lx and ly forward difference")
%%
h= fi(2);
g_f_h = ( y_h(2:360) - y_h(1:359)  )./h;

g_f = forward_difference_deritave(@p,fi,fi(2));
nexttile
polarplot(fi(1:359), g_f_h)
title("g forward difference")
%%%%%%%%%%%%%%%%
dxfi_dfi_b_h = back_difference_deritave(xh,fi,fi(2));
dyfi_dfi_b_h = back_difference_deritave(yh,fi,fi(2));

dxfi_dfi_b = back_difference_deritave(x,fi,fi(2));
dyfi_dfi_b = back_difference_deritave(y,fi,fi(2));
nexttile
polarplot(lx(@L,dxfi_dfi_b_h, dyfi_dfi_b_h), ly(@L, dxfi_dfi_b_h,dyfi_dfi_b_h) )
title("lx and ly back difference")
%%%%%%%%%%%%%%%
h= fi(2);
g_b_h = (  y_h(1:359) - y_h(2:360)  )./ -h;
g_b = back_difference_deritave(@p,fi,fi(2));
nexttile
polarplot(fi(2:360), g_b_h)
title("g back difference")
%%%%%%%%%%%%%%
dxfi_dfi_e_h = three_point_end_point(xh,fi,fi(2));
dyfi_dfi_e_h = three_point_end_point(yh,fi,fi(2));

dxfi_dfi_e = three_point_end_point(x,fi,fi(2));
dyfi_dfi_e = three_point_end_point(y,fi,fi(2));

nexttile
polarplot(lx(@L,dxfi_dfi_e_h, dyfi_dfi_e_h), ly(@L, dxfi_dfi_e_h,dyfi_dfi_e_h) )
title("lx and ly three point end point")
%%%%%%%%%%%%%%
h= fi(2);
g_e_h = (1/2*h) * (-3*y_h(1:358) + 4*y_h(2:359) -y_h(3:360));
g_e = three_point_end_point(@p,fi,fi(2));
nexttile
polarplot(fi(1:358), g_e_h)
title("g three point end point")
%%%%%%%%%%%%%
dxfi_dfi_m_h = three_point_middle_point(xh,fi,fi(2));
dyfi_dfi_m_h = three_point_middle_point(yh,fi,fi(2));

dxfi_dfi_m = three_point_middle_point(x,fi,fi(2));
dyfi_dfi_m = three_point_middle_point(y,fi,fi(2));
nexttile
polarplot(lx(@L,dxfi_dfi_m_h, dyfi_dfi_m_h), ly(@L, dxfi_dfi_m_h,dyfi_dfi_m_h) )
title("lx and ly middle point")
%%%%%%%%%%%%
h= fi(2);
g_m_h = (1/2* h) * (y_h(3:360) -y_h(1:358) );
g_m = three_point_middle_point(@p,fi,fi(2));
nexttile
polarplot(fi(2:359), g_m_h)
title("g middle point")

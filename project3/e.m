xler = linspace(0,2*pi,360);
n = 180;
xh =@(fi) cubicSpline(@p  ,fi, [0,2*pi] , n) .*cos(fi);
yh =@(fi) cubicSpline(@p  ,fi, [0,2*pi] , n) .*sin(fi); 
dxfi_dfi_m_h =@(fi) three_point_middle_point(xh,fi,  xler(2));
dyfi_dfi_m_h =@(fi) three_point_middle_point(yh,fi,  xler(2));

f_fi = @(fi) log(cubicSpline(@p  ,fi, [0,2*pi] , n)) * L(dxfi_dfi_m_h(fi),dyfi_dfi_m_h(fi));
g2 = Gauss_square2(0,2*pi,f_fi);
%%
fprintf('%.10f\n',g2)
%%
g3 = Gauss_square3(0,2*pi,f_fi);
%%
fprintf('%.10f\n',g3)
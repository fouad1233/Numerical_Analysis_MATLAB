syms x real;
xvalues = [0 1.2 2.4 3.6 4.8 6];
yvalues=[10.0000 6.7113 0.0251 -3.9177 -2.4043 1.5065];
%plot(x_values, y_values );
lpoli = lagrangeip(xvalues, yvalues , 5);
%lpoli = vpa(lpoli , 10); % with this function matlab do division with resolation [vpa(x,n)] n after comma

%interplation_pol
%subs(lpoli, x, 3) %with this function you can put a number in the place of symbol
npoli =newtonip(xvalues,yvalues,5);
%npoli = vpa(npoli,10);

%ax = axes;
%plot(xvalues,yvalues);

%x_cnt = 0:0.0001:6;
%y_cntl = subs(lpoli, x, x_cnt);
%plot(x_cnt,y_cntl);
%hold on

%y_cntn = subs(npoli, x, x_cnt);
%plot(x_cnt,y_cntn,'*','MarkerIndices',1:3000:length(y_cntn));
%y_exact = 10 * besselj(0, x_cnt);
%plot(x_cnt,y_exact);
%ax.ColorOrder = [1 0 0; 0 1 0; 0 0 1 ]; %the first plot will be red , the second green , the third blue
%hold off


y_l_error = abs(y_cntl- y_exact) ./ y_exact ;
title("x'e bağlı mutlak hata grafiği")
xlabel('0 < x < 6') 
ylabel('Mutlak hata') 
plot(x_cnt , y_l_error )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%lpoli_f = matlabFunction(lpoli);
%[a_it,b_it,p_it,fp_it] = bisection(lpoli_f,[0,6],20);
%lpoli_f_bis_t = table(a_it.',b_it.',p_it.',fp_it.');
%l_poli_bis_err  =( b_it(end) - a_it(end)) / 2;

%[p_it , fp_it] = fixed_point(lpoli_f,2.5,20);
%lpoli_f_fixed_t = table(p_it.',fp_it.');

%[p_it , fp_it] = newton_raphson(lpoli,2.5,4);
%lpoli_f_newtonr_t = table(p_it.',fp_it.');
%[l_raph_error ,l_raph_error_func] = calculate_newton_raphson_error(lpoli , p_it(end-1) , p_it(end), [2.4 , 2.5]);

%[p_it , fp_it] = secant_method(lpoli_f,2,3,20);
%lpoli_f_secant_t = table(p_it.',fp_it.');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%npoli_f = matlabFunction(npoli);
%[a_it,b_it,p_it,fp_it] = bisection(npoli_f,[0,6],20);
%npoli_f_bis_t = table(a_it.',b_it.',p_it.',fp_it.');
%npoli_bis_err  =( b_it(end) - a_it(end)) / 2;
%[p_it , fp_it] = fixed_point(npoli_f,2.5,20);
%npoli_f_fixed_t = table(p_it.',fp_it.');

%[p_it , fp_it] = newton_raphson(npoli,2.5,5);
%npoli_f_newtonr_t = table(p_it.',fp_it.');
%[n_raph_error ,n_raph_error_func] = calculate_newton_raphson_error(lpoli , p_it(end-1) , p_it(end), [2.4 , 2.5] )

%[p_it , fp_it] = secant_method(npoli_f,2,3,20);
%npoli_f_secant_t = table(p_it.',fp_it.');
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%syms x real;
%fx_poli = 10 * besselj(0,x);
%fx_poli_f = matlabFunction(fx_poli);

%[a_it,b_it,p_it,fp_it] = bisection(fx_poli_f,[0,6],20);
%fxpoli_f_bis_t = table(a_it.',b_it.',p_it.',fp_it.');
%fx_poli_bis_err  =( b_it(end) - a_it(end)) / 2;

%[p_it , fp_it] = fixed_point(fx_poli_f,2.5,20);
%fxoli_f_fixed_t = table(p_it.',fp_it.');

%[p_it , fp_it] = newton_raphson(fx_poli,2.5,4);
%fxpoli_f_newtonr_t = table(p_it.',fp_it.');
%[fx_raph_error ,fx_raph_error_func] = calculate_newton_raphson_error(...
%    lpoli , p_it(end-1) , p_it(end), [2.4 , 2.5]);

%[p_it , fp_it] = secant_method(fx_poli_f,2,3,9);
%fxpoli_f_secant_t = table(p_it.',fp_it.');



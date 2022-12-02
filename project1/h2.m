
xvalues = [0 1.2 2.4 3.6 4.8 6];
yvalues=[10.0000 6.7113 0.0251 -3.9177 -2.4043 1.5065];
lpoli = lagrangeip(xvalues, yvalues , 5);
npoli =newtonip(xvalues,yvalues,5);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lpoli_f = matlabFunction(lpoli);
[l_a_it_b,l_b_it_b,l_p_it_b,l_fp_it_b] = bisection(lpoli_f,[5,6],20);
lpoli_f_bis_t = table(l_a_it_b.',l_b_it_b.',l_p_it_b.',l_fp_it_b.');
l_poli_bis_err  =( l_b_it_b(end) - l_a_it_b(end)) / 2;

[l_p_it_f , l_fp_it_f] = fixed_point(lpoli_f,5.5,20);
lpoli_f_fixed_t = table(l_p_it_f.',l_fp_it_f.');

[l_p_it_n , l_fp_it_n] = newton_raphson(lpoli,5.5,6);
lpoli_f_newtonr_t = table(l_p_it_n.',l_fp_it_n.');
[l_raph_error ,l_raph_error_func] = calculate_newton_raphson_error...
(lpoli , l_p_it_n(end-1) , l_p_it_n(end), [5,6]);

[l_p_it_s , l_fp_it_s] = secant_method(lpoli_f,5,6,20);
lpoli_f_secant_t = table(l_p_it_s.',l_fp_it_s.');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
npoli_f = matlabFunction(npoli);
[n_a_it_b,n_b_it_b,n_p_it_b,n_fp_it_b] = bisection(npoli_f,[5,6],20);
npoli_f_bis_t = table(n_a_it_b.',n_b_it_b.',n_p_it_b.',n_fp_it_b.');
npoli_bis_err  =( n_b_it_b(end) - n_a_it_b(end)) / 2;

[n_p_it_b , n_fp_it_b] = fixed_point(npoli_f,5.5,20);
npoli_f_fixed_t = table(n_p_it_b.',n_fp_it_b.');

[n_p_it_n , n_fp_it_n] = newton_raphson(npoli,5.5,5);
npoli_f_newtonr_t = table(n_p_it_n.',n_fp_it_n.');
[n_raph_error ,n_raph_error_func] = calculate_newton_raphson_error...
    (lpoli , n_p_it_n(end-1) , n_p_it_n(end), [5,6]);

[n_p_it_s , n_fp_it_s] = secant_method(npoli_f,5,6,20);
npoli_f_secant_t = table(n_p_it_s.',n_fp_it_s.');
%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms x real;
fx_poli = 10 * besselj(0,x);
fx_poli_f = matlabFunction(fx_poli);

[f_a_it_b,f_b_it_b,f_p_it_b,f_fp_it_b] = bisection(fx_poli_f,[5,6],20);
fxpoli_f_bis_t = table(f_a_it_b.',f_b_it_b.',f_p_it_b.',f_fp_it_b.');
fx_poli_bis_err  =( f_b_it_b(end) - f_a_it_b(end)) / 2;

[p_it , fp_it] = fixed_point(fx_poli_f,5.5,20);
fxoli_f_fixed_t = table(p_it.',fp_it.');

[p_it , fp_it] = newton_raphson(fx_poli,5.5,3);
fxpoli_f_newtonr_t = table(p_it.',fp_it.');
[fx_raph_error ,fx_raph_error_func] = calculate_newton_raphson_error(...
   lpoli , p_it(end-1) , p_it(end), [5,6]);

[p_it , fp_it] = secant_method(fx_poli_f,5,6,9);
fxpoli_f_secant_t = table(p_it.',fp_it.');
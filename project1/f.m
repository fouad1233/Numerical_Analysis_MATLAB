xvalues = [0 1.2 2.4 3.6 4.8 6];
yvalues=[10.0000 6.7113 0.0251 -3.9177 -2.4043 1.5065];
lpoli = lagrangeip(xvalues, yvalues , 5);
lpoli_f = matlabFunction(lpoli);
x_cnt = 0:0.0001:6;
y_cntl = lpoli_f(x_cnt);
y_exact = 10 * besselj(0, x_cnt);
%hold on 
%plot(x_cnt ,y_cntl );
%plot(x_cnt,y_exact);
error = abs((y_cntl - y_exact) )  ;
abs_error = [];
for i=1:1:length(error)
    abs_error(end+1) = abs(error(i)/y_exact(i));
end
plot(x_cnt,abs_error);
title("x'e bağlı mutlak hata grafiği")
xlabel('0 < x < 6') 
ylabel('Mutlak hata') 
%plot(x_cnt , error )

%hold off
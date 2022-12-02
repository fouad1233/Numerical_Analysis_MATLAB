xvalues = [0 1.2 2.4 3.6 4.8 6];
yvalues=[10.0000 6.7113 0.0251 -3.9177 -2.4043 1.5065];
lpoli = lagrangeip(xvalues, yvalues , 5);
npoli =newtonip(xvalues,yvalues,5);
lpoli_f = matlabFunction(lpoli);
npoli_f = matlabFunction(npoli);
ax = axes;
plot(xvalues,yvalues);
x_cnt = 0:0.0001:6;
y_cntl = lpoli_f(x_cnt);
plot(x_cnt,y_cntl);
hold on
y_cntn = npoli_f(x_cnt);
plot(x_cnt,y_cntn,'*','MarkerIndices',1:3000:length(y_cntn));
hold off
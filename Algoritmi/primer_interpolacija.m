% Primer interpolacije

fprintf('Interpoliramo podatke (x,y) s polinomom:\n\n')
x=[0,1,3,4]
y=[-2,2,4,-10]
pause

% vektor deljenih diferenc
d=deljeneDif(x,y);
fprintf('Koeficienti Newtonovega interpolacijskega polinoma so:\n\n')
d
pause
fprintf('\n\nPreverimo, ce se vrednosti v x res ujemajo:\n')
v=vrednostIP(x,d,x);
v
pause
fprintf('Izpisemo se tabelo deljenih diferenc:\n\n')
deljeneDiferenceMat(x,y)

pause
% narisemo graf
fprintf('Graf interpolacijskega polinoma:')
pause
xx=x(1):0.1:x(end);
yy=vrednostIP(x,d,xx);
plot(x,y,'ro',xx,yy,'b-')
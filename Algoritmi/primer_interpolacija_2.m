close all
% Primer interpolacije
fprintf('Interpoliramo podatke (x,sin(x)) za x=0:2:10 s polinomom:\n\n')
x=0:2:10;
f=@(x)(sin(x));
y=f(x);
n=length(x)-1;
pause
% vektor deljenih diferenc
fprintf('Koeficienti Newtonovega interpolacijskega polinoma so:\n\n')
d=deljeneDif(x,y);
d
%vrednostIP(x,d,2)
pause
% narisemo graf
fprintf('Graf interpolacijskega polinoma in sinusa:\m\n')
xx=x(1):0.01:x(end);
yy=vrednostIP(x,d,xx);
plot(x,y,'ro',xx,sin(xx),'g-',xx,yy,'b-')
pause
% vgrajena funkcija
figure(2)
fprintf('Narisimo oba grafa s pomocjo vgrajenih funkcij polyfit in polyval:')
pause
figure
p = polyfit(x,y,n) % koeficienti v standardni bazi
plot(x,y,'ro',xx,sin(xx),'g-',xx,polyval(p,xx),'r-')

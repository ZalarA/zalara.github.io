% Rungejev primer

% ekvidistantne tocke
a=-5;
b=5;
n=30;
ff=@(x)(1./(1+x.^2));
x=linspace(a,b,n+1);
y=ff(x);

% vektor deljenih diferenc
d=deljeneDif(x,y);

% narisemo graf
xx=x(1):0.01:x(end);
yy=vrednostIP(x,d,xx);
plot(x,y,'ro',xx,yy,'b-',xx,ff(xx),'r-')
title('Rungejev primer z ekvidistantnimi tockami')
napaka=max(abs(yy-ff(xx)))
pause

% Cebiseve tocke
xC=(a+b)/2+(b-a)/2*cos(pi/(2*n+2)*(2*[0:n]+1));
yC=ff(xC);
% vektor deljenih diferenc
dC=deljeneDif(xC,yC);
yyC=vrednostIP(xC,dC,xx);
figure
plot(xC,yC,'ro',xx,yyC,'b-',xx,ff(xx),'r-')
title('Rungejev primer s Cebisevimi tockami')
napaka=max(abs(yyC-ff(xx)))

pause
figure
plot(xx,abs(yy-ff(xx)),'g-')
title('graf napake - ekvidistantne tocke')
pause
figure
plot(xx,abs(yyC-ff(xx)),'g-')
title('graf napake - Cebiseve tocke')

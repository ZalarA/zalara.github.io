% Rungejev primer
ff=@(x)(1./(1+x.^2));

% ekvidistantne tocke
a=-5;
b=5;

xx=a:0.001:b;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%7 Cebisevih toèk
n=6; 
xC1=(a+b)/2+(b-a)/2*cos(pi/(2*n+2)*(2*[0:n]+1));
yC1=ff(xC1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%13 Cebisevih toèk
n=12; 
xC2=(a+b)/2+(b-a)/2*cos(pi/(2*n+2)*(2*[0:n]+1));
yC2=ff(xC2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%19 Cebisevih toèk
n=18; 
xC3=(a+b)/2+(b-a)/2*cos(pi/(2*n+2)*(2*[0:n]+1));
yC3=ff(xC3);

% vektor deljenih diferenc
dC1=deljeneDif(xC1,yC1);
yyC1=vrednostIP(xC1,dC1,xx);

dC2=deljeneDif(xC2,yC2);
yyC2=vrednostIP(xC2,dC2,xx);

dC3=deljeneDif(xC3,yC3);
yyC3=vrednostIP(xC3,dC3,xx);

figure
plot(xx,yyC1,'b-',xx,yyC2,'k-',xx,yyC3,'g-',xx,ff(xx),'r-')
title('Rungejev primer s Cebisevimi tockami')
%napaka=max(abs(yyC-ff(xx)))
 
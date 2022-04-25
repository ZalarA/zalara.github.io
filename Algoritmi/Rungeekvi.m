% Rungejev primer
ff=@(x)(1./(1+x.^2));

% ekvidistantne tocke
a=-5;
b=5;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%7 ekvidistantnih toèk
n=6;
x1=linspace(a,b,n+1);
y1=ff(x1);

% vektor deljenih diferenc
d1=deljeneDif(x1,y1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%13 ekvidistantnih toèk
n=12;
x2=linspace(a,b,n+1);
y2=ff(x2);

% vektor deljenih diferenc
d2=deljeneDif(x2,y2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% narisemo graf
xx=x1(1):0.001:x1(end);
y1=vrednostIP(x1,d1,xx);
y2=vrednostIP(x2,d2,xx);

plot(xx,y1,'b-',xx,y2,'k-',xx,ff(xx),'r-')
title('Rungejev primer z ekvidistantnimi tockami')

%napaka=max(abs(yy-ff(xx)))
%pause


function d=deljeneDif(x,y)
% izracuna vektor deljenih diferenc d=(d0,d1,...,dn),
% di=f[x0,x1,...,xi], kjer sta
% x=[x0,x1,...,xn] in y=[f(x0),f(x1),...,f(xn)].
% Tocke xi so paroma razlicne

d=y;
n=length(x)-1;

for i=1:n
    for j=n:-1:i
        d(j+1)=(d(j+1)-d(j))/(x(j+1)-x(j-i+1));
    end
end
    

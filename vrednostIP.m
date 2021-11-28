function v=vrednostIP(x,d,t)
% Izracuna vrednost v interpolacijskega polinoma
% na tockah x=(x0,x1,...,xn), podanega s tabelo deljenih diferenc d=(d0,d1,...,dn),
% v tocki t.

n=length(x)-1;
% Hornerjev algoritem
v=d(n+1);
for i=n:-1:1
    v=d(i)+(t-x(i)).*v;
end
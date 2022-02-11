%Primer raèunanja kvadratnega korena pozitivnega števila a=3 s tangentno
%metodo za funkcijce 
%f1(x)=x^2-a
%f2(x)=1-a/x^2
%f3(x)=x-a/x

f1=inline('x^2-3');
f1prime=inline('2*x');
tangentna(f1,f1prime,3)

f2=inline('1-3/x^2');
f2prime=inline('6/x^3');
tangentna(f2,f2prime,3)

f3=inline('x-3/x');
f3prime=inline('1+3/x^2');
tangentna(f3,f3prime,3)
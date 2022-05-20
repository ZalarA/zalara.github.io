% Problem stabilnosti za Eulerjevo metodo
% diferencialna enacba  y' = -8y, y(0) = 1
x0=0;
y0=1;
f=@(x,y) (-8*y);


figure(1)
N = 2; h = 1/N; 
[X,Y]=euler(f,x0,y0,N,h);
plot(X,Y,'r')
ylabel('h=1/2'),

figure(2)
N = 2; h = 1/N; 
[X,Y]=euler(f,x0,y0,5*N,h);
plot(X,Y,'r')
ylabel('h=1/2'),

figure(3)
N = 5; h = 1/N; 
[X,Y]=euler(f,x0,y0,N,h);
plot(X,Y,'r'), 
ylabel('h=1/5'), 

figure(4)
N = 5; h = 1/N; 
[X,Y]=euler(f,x0,y0,10*N,h);
plot(X,Y,'r'), 
ylabel('h=1/5'), 

figure(5)
N = 10; h = 1/N; 
[X,Y]=euler(f,x0,y0,N,h);
plot(X,Y,'k')
ylabel('h=1/8'), 

figure(6)
N = 10; h = 1/N; 
[X,Y]=euler(f,x0,y0,10*N,h);
plot(X,Y,'k')
ylabel('h=1/8'), 

figure(7)
N = 20; h = 1/N; 
[X,Y]=euler(f,x0,y0,N,h);
plot(X,Y,'r')
ylabel('h=1/20'), 

figure(8)
N = 20; h = 1/N; 
[X,Y]=euler(f,x0,y0,10*N,h);
plot(X,Y,'r')
ylabel('h=1/20'), 

figure(9)
N = 50; h = 1/N; 
[X,Y]=euler(f,x0,y0,N,h);
plot(X,Y,'m')
ylabel('h=1/50'),

figure(10)
N = 50; h = 1/N; 
[X,Y]=euler(f,x0,y0,10*N,h);
plot(X,Y,'m')
ylabel('h=1/50'),






clear all

f=@(x,y) (-y+1)
pause
disp(sprintf('DOPRI5'));
pause
[X,Y,H]=DOPRI5_eng(f,0,2,10,10^(-7),0.9);
[n,m] = size(X);
for i=0:m-1
  disp(sprintf('x=%3.5f, h=%3.5f, y=%3.5f, error: %5.15f',X(i+1),H(i+1),Y(i+1), Y(i+1)-exp(-X(i+1))-1));
end

pause
z = 1 + exp(-X);
err = Y - (exp(-X)+1);
maxerr = max(abs(err));
[n,m] = size(X);
figure(3)
    bar(X(2:m), H(2:m))
    title('DOPRI5')
    xlabel('x')
    ylabel('Sequence of steps')
figure(2)
    plot(X,-err)
    title('DOPRI5')
    xlabel('x')
    ylabel('Global error')
figure(1)
    plot(X,Y,'*r',X,z,'g')
    title('DOPRI5')
    ylabel('Num. solution (red) and exact solution (green)')
    xlabel('x')
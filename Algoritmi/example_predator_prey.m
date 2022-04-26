fprintf(['Solving the predator-prey model\n\n'...
        '   rdot=0.3*r-0.004*r*f,\n'...
        '   fdot=-0.2*f+0.001*f*r.\n\n'])
f=@(x,y) [0.3*y(1)-0.004*y(1)*y(2);-0.2*y(2)+0.001*y(1)*y(2)]

pause
fprintf(['Solution of the model by Eulers method with initial data\n\n'...
          '   r(0)=500, f(0)=50; t from 0 to 200 with h=0.1.\n\n'])
[X,Y]=euler_eng(f,0,[500;50],2000,0.1);

pause
%disp(sprintf('Euler method'));
figure(1)
plot(X,Y(1,:),'r')
title('Euler method: Y(1) (red), Y(2) (blue)')
hold on 
plot(X,Y(2,:),'b')
hold off
figure(2)
plot(Y(1,:),Y(2,:))
title('Euler method: Y(1),Y(2)-plane')

pause
fprintf(['Solution of the model by RK with initial data\n\n'...
          '   r(0)=500, f(0)=50; t from 0 to 200 with h=0.1.\n\n'])
[X,Y]=RK4_eng(f,0,[500;50],2000,0.1);
pause
%disp(sprintf('RK4 method'));
figure(3)
plot(X,Y(1,:),'r')
title('RK4 method: Y(1) (red), Y(2) (blue)')
hold on 
plot(X,Y(2,:),'b')
hold off
figure(4)
plot(Y(1,:),Y(2,:))
title('RK4 method: Y(1),Y(2)-plane')

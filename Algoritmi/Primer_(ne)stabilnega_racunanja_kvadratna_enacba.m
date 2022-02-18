format long

%Racunamo eno od resitev, tj. x2, kvadratne enacbe x^2+2Ax+b=0 na dva nacina:
%x2=-A+sqrt(A^2-b)
%x2=-b/(A+sqrt(A^2-b))

%A=10000, b=-1

A=10000; b=-1; disp(sprintf('A= %5d, b= %1d', A,b))

%Racunamo prek nestabilne formule x2=-A+sqrt(A^2-b).
y=-A+sqrt(A^2-b);
disp(sprintf('y=-A+sqrt(A^2+b)= %1.15f', y))

%Preverimo, ali je rezultat res 0.
disp(sprintf('y^2+2*A*y+b= %1.15f', y^2+2*A*y+b))

%Racunamo prek stabilne formule x2=-b/(A+sqrt(A^2-b))
y2=-b/(A+sqrt(A^2-b));
disp(sprintf('y2=b/(A+sqrt(A^2+b))= %1.15f', y2))

%Preverimo, ali je rezultat res 0.
disp(sprintf('y2^2+2*A*y2+b= %1.15f', y2^2+2*A*y2+b))
A=10000;
q=1;
disp(sprintf('A= %5d, q= %1d', A,q))

y=-A+sqrt(A^2+q);
disp(sprintf('-A+sqrt(A^2+q)= %1.15f', y))

y2=q/(A+sqrt(A^2+q));
disp(sprintf('q/(A+sqrt(A^2+q))= %1.15f', y2))

disp(sprintf('y^2+2*A*y-q= %1.15f', y^2+2*A*y-q))
disp(sprintf('y2^2+2*A*y2-q= %1.15f', y2^2+2*A*y2-q))
% Gauss-Seidlova iteracija za testni primer:
%
%-2x+y=-1
%x-2y+z=0
%y-2z+w=0
%z-2w=-1

A = [-2 1 0 0; 1 -2 1 0; 0 1 -2 1; 0 0 1 -2];
b = [-1; 0; 0; -1];

gaussseidel(A,[eps;eps;eps;eps],b,eps,100);

     

fprintf(['Finding a global mimimum of the polynomial\n\n'...
        '   f(x1,x2)=-(x1-1)^2-2*(x1-x2)^2-(x2-5)^2\n\n'...
        'with constraints\n\n'... 
        '   1-(x1-1)^2>=0, 3-(x1-x2)^2>=0, 1-(x2-5)^2>=0\n\n'...
        'using Lasserre relaxation technique.\n\n'])

mpol x1 x2

pause
f=-(x1-2)^2-(x1-x2)^2-(x2-4)^2
K=[1-(x1-2)^2>=0, 1-(x1-x2)^2>=0, 1-(x2-4)^2>=0]

pause
fprintf('The lowest relaxation:\n\n')
pause
P=msdp(min(f),K)
pause
[status,object]=msol(P)
pause
fprintf('The moment matrix:\n\n')
double(mmat(meas))
%rank(double(mmat(meas)))
pause
fprintf('The next relaxation:\n\n')
pause
P=msdp(min(f),K,2)
pause
[status,object]=msol(P)
pause
fprintf('The atoms:\n\n')
double(meas)
pause
fprintf('The moment matrix:\n\n')
pause
M=double(mmat(meas))
pause
fprintf('Extraction of the atoms:\n\n')
pause
[U1,D,V1]=svd(M)
pause
U2=U1*sqrt(D);
V=U2(:,1:3)
pause
U=rref(V')'
pause
N1=U([2,4,5],:)
N2=U([3,5,6],:)
pause
lambda1=rand(1)
lambda2=rand(1)
N=lambda1*N1+lambda2*N2
pause
[Q,T]=schur(N)
for i=1:3
   [Q(:,i)'*N1*Q(:,i),Q(:,i)'*N2*Q(:,i)]
end

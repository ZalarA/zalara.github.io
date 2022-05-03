fprintf(['Finding a global mimimum of the polynomial\n\n'...
    '   -(x1-2)^2-(x1-x2)^2-(x2-4)^2\n\n'...
    'with constraints\n\n'...
    '1-(x1-2)^2>=0, 1-(x1-x2)^2>=0, 1-(x2-4)^2>=0\n\n'...
    'using Lasserre relaxation technique.'])
pause
clear all
mpol x1 x2
f=-12*x1-7*x2+x2^2
K=[0<=x1, x1<=2, 0<=x2, x2<=3, -2*x1^4+2-x2>=0, -2*x1^4+2-x2<=0]
pause
fprintf('The lowest relaxation:\n\n')
pause
P=msdp(min(f),K);
[status,object]=msol(P)
pause
fprintf('The atoms in the measure:\n\n')
double(meas)
pause
fprintf('Let us compute the atoms:\n\n')
pause
M=double(mmat(meas))
pause
[U1,D,V1]=svd(M(1:3,1:3))
pause
U2=U1*sqrt(D);
V=U2(:,1)
pause
U=rref(V')'
pause
N1=U([2],:)
N2=U([3],:)
pause
lambda1=rand(1)
lambda2=rand(1)
N=lambda1*N1+lambda2*N2
pause
[Q,T]=schur(N)
pause
for i=1
   [Q(:,i)'*N1*Q(:,i),Q(:,i)'*N2*Q(:,i)]
end
pause
fprintf('We need to check that the atom lies in K.')
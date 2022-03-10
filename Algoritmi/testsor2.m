% SOR iteracija za testni primer:
%
%-2x+y=-1
%x-2y+z=0
%y-2z+w=0
%z-2w=-1

A=[-2 1 0 0; 1 -2 1 0; 0 1 -2 1; 0 0 1 -2]
D=diag(A)
L=-tril(A,-1)
U=-triu(A,1)
b=[-1; 0; 0; -1]
x0=[eps;eps;eps;eps]
w=0.9

[y,korak]=sor(A,x0,b,w)

R=inv(diag(D)-w*L)*((1-w)*diag(D)+w*U);

disp(sprintf('Supremum norma matrike R je %1.3f.',norm(R,inf)))

W=linspace(0.01,2-0.01,100);
K=linspace(0.01,2-0.01,100);

t=size(W)(2);

for i=1:t
  x0=[eps;eps;eps;eps];
  [y,korak]=sor(A,x0,b,W(i));
  K(i)=korak;
end

plot(W,K)
    

     

A=zeros(20,20);
x=linspace(0,pi,20);
A(1,:)=sin(x);A(20,:)=sin(x);
for k=1:200
  for i=2:19
    for j=2:19
      A(i,j)=1/3.5*(A(i,j-1)+A(i-1,j)+A(i+1,j)+A(i,j+1));
    endfor
  endfor
  mesh(x,x,A);
  k
  hold on
  pause(.00001)
endfor



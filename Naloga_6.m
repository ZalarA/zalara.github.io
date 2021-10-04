%Naloge 1. poglavje


%Naloga 6
disp('          n  |    naprej         |     toèno         |   razlika')
I=1-1/exp(1);
f=@(x,n)x.^n*exp(-x);
J=integral(@(x)f(x,0),0,1,'ArrayValued',true);
disp(sprintf('%12d | %5.15f | %10.15f | %5.15f', 0,I,J(1),I-J(1)))
for n=1:20
  I=n*I-1/exp(1);
  J=integral(@(x)f(x,n),0,1,'ArrayValued',true);
  value=J(1);
  disp(sprintf('%12d | %5.15f | %10.15f | %5.15f',n,I,value,I-value))
end

disp('          n  |    nazaj          |     toèno         |   razlika')

I=0;
n=30;
J=integral(@(x)f(x,n),0,1,'ArrayValued',true);
disp(sprintf('%12d | %5.15f | %10.15f | %5.15f', 0,I,J(1),I-J(1)))
for n=29:-1:0
  I=(I+1/exp(1))/(n+1);
  J=integral(@(x)f(x,n),0,1,'ArrayValued',true);
  value=J(1);
  disp(sprintf('%12d | %5.15f | %10.15f | %5.15f',n,I,value,I-value))
end

disp('          n  |    nazaj          |     toèno         |   razlika')
I=10^4;
n=30;
J=integral(@(x)f(x,n),0,1,'ArrayValued',true);
disp(sprintf('%12d | %5.15f | %10.15f | %5.15f', 0,I,J(1),I-J(1)))
for n=29:-1:0
  I=(I+1/exp(1))/(n+1);
  J=integral(@(x)f(x,n),0,1,'ArrayValued',true);
  value=J(1);
  disp(sprintf('%12d | %5.15f | %10.15f | %5.15f',n,I,value,I-value))
end
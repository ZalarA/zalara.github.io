%Naloge 1. poglavje

%Naloga 3
f=inline('x*(sqrt(x+1)-sqrt(x))')
g=inline('x/(sqrt(x+1)+sqrt(x))')
disp(' i v x=10^i  |      nestabilna for.    |           stabilna for.   |           razlika')
for i=1:20;
  x=10^i;
  A=f(x);
  B=g(x);
  disp(sprintf('%12d | %23.14f | %25.14f | %25.14f ', i,A,B,A-B))
end

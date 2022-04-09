%Primer reševanja sistema enaèb 
%x_1=1/3*(cos(x1*x2)+0.6
%x_2=1/9*Sqrt(x1^2+sin(x_3)+1.1)-0.1
%x_3=-1/20*(exp(-x1*x2)+9.1)
g=inline(strcat(...
  '[1/3*(cos(x(1)*x(2)))+6/10;',... 
  '1/9*sqrt(x(1)^2+sin(x(3))+1.1)-1/10;',...
  '-1/20*(exp(-x(1)*x(2))+9.1)]'));

iteracija(g,[1;1;1])
function y=gaussnewton(F,JF,x0,delta,maxsteps)

% y=GUASSNEWTON(F,JF,x0,delta,maxsteps) does Gauss-Newton method for the function F and Jacobian JF 
% with initial approximation x0. The function F and JF are given 
% in the form of inline functions (e.g., F=inline('[x(1)^2+x(2)^2-10*x(1)+x(2)-1, x(1)^2-x(2)^2-x(1)+10*x(2)-25]') ). 
% The iteration stops, when the last two iterates are relatively less than delta apart or we exceed the number of steps allowed,
% which is maxsteps. If we don't give the last two parameters, then the value of delta 
% is eps, and maxsteps is 50.


if nargin<4, delta=eps; end
if nargin<5, maxsteps=50; end

xn=x0;
deltax=2*delta*x0+1;
step=0;                    						 
while (norm(deltax)>delta*norm(xn)) & (step<maxsteps)
   step=step+1;           						 
   x0=xn;
   deltax=-pinv(JF(x0))*F(x0);
   xn=x0+deltax;
   disp(sprintf('%3d:  %s %0.1e',step,sprintf('%15.15f  ',xn),norm(deltax,'inf')/norm(x0,'inf')));  
   norm(deltax);
end   

y=xn;
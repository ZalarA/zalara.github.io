function y=newton(f,fprime,x0,delta,maxsteps)

% y=NEWTON(f,fprime,x0,delta,maxsteps) does Newton method for the function f 
% and its derivative with initial approximation x0. The function f and fprime are given 
% in the form of inline functions (e.g., f=inline('x^2-2')). The iteration stops, when the last 
% two iterates are relatively less than delta apart or we exceed the number of steps allowed,
% which is maxsteps. If we don't give the last two parameters, then the value of delta 
% is eps, and maxsteps is 50.

if nargin<4, delta=eps; end
if nargin<5, maxsteps=50; end

xn=x0;
x0=Inf;
step=0;

disp(sprintf('Step,        x,              f(x),            derivative(f)(x)'));
disp(sprintf('%3d: %15.15f  %15.15f  %15.15f',[step,xn,f(xn),fprime(xn)]));
                    						 
while (abs(xn-x0)>delta*abs(xn)) & (step<maxsteps)
    step=step+1;           						    
    x0=xn;
    xn=x0-f(x0)/fprime(x0);
    if (imag(xn)~=0)
        disp(sprintf('%3d: %15.15f %+15.15fi',[step,real(xn),imag(xn)]));  
    else
        disp(sprintf('%3d: %15.15f  %15.15f  %15.15f',[step,xn,f(xn),fprime(xn)]));  
    end
end   

y=xn;
function x=gradient_descent(g,gradg,x,delta,maxsteps)

%The function is finding a local minimum of the function g
%using gradient descent. Gradg is the symbolic expression of the
%gradient, x is initial approximation, delta is the tolerance and maxsteps
%is the number of iteration steps allowed.

if nargin<4, delta=eps; end
if nargin<5, maxsteps=100; end

korak=1;

while korak<maxsteps
  g1=g(x);
  z=gradg(x);
  z0=norm(z);
  if z0==0
    sprint('Zero gradient.')
  else
%The method tries to move for one unit (alpha3=1) in the opposite
%direction of the gradient vector.
%If the function value (g3 below) in this point is not smaller than
%the function value in the current point (g1...alpha1=0), then
%alpha3 is halved. This is repeated until g3<g1.  
    z=z/z0;
    alpha1=0;
    alpha3=1;
    g3=g(x-alpha3*z);
  end
  while g3>=g1
    alpha3=alpha3/2;
    g3=g(x-alpha3*z);
    if alpha3<delta/2
      sprintf('No improvement.')
      break
    end
  end
%Having alpha1=0, alpha3, we also compute alpha2=alpha3/2 and the value
%of the function g in the corresponding point (g2).
  alpha2=alpha3/2;
  g2=g(x-alpha2*z);
%We compute the quadratic polynomial through the points (alpha1,g1), (alpha2,g2)
%(alpha3,g3) in the basis 1, (x-alpha1), (x-alpha1)(h-alpha2), i.e.,
%the polynomial is h(alpha)=h1+h2*(x-alpha1)+h3*(x-alpha1)(x-alpha2)
%The reason for this basis is numerical stability.
  h1=(g2-g1)/alpha2;
  h2=(g3-g2)/(alpha3-alpha2);
  h3=(h2-h1)/alpha3;
%The minimum of h is where h'(alpha0)=0:
  alpha0=0.5*(alpha2-h1/h3);
%We compare the values of g0 and g3 and take the one which is smallest
%for the correspoding alpha.
%This gives us a new approximation of our local minimum x.
  g0=g(x-alpha0*z);
  if g0<g3
    alpha=alpha0;
  else
    alpha=alpha3;
  end
  x=x-alpha*z;
  G=g(x);
%We are comparing this loop until the absolute value of the difference between the values
%of g in the last iterates is small enough.
  if abs(G-g1)<delta
    break
  else
    disp(sprintf('%3d:  %s %0.1e',korak,sprintf('%15.15f  ',x),G));  % izpisemo trenutni priblizek
    korak=korak+1;
  end
end

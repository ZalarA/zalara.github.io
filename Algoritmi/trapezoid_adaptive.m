function [T,Nev,e]=trapezoid_adaptive(f,a,b,epsilon)

% adaptive trapezoid rule
% Estimating the value of the definite inegral
% Data
%               f           continuous function
%               a                       left endpoint of the interval
%               b                       right endpoint of the interval
%               epsilon     tolerance allowed
% Results:
%               T               estimation of the integral
%               Nev             the number of the evaluatoins of the function
%               e               the estimation of the error

h =(b-a);
c=(a+b)/2;
hold on
title('Division points')
plot([c c],[-1,1]*1e-2,'b') % plot new point
%T1   trapezoid rule for the division {a,b}
T1 =h*(f(a)+f(b))/2;
%T2  trapezoid rule for the division {a,(a+b)/2,b}
T2= T1/2+h/2*(f(c));
%e  estimation of the error (1/3 comes from a more thorough observation of the Taylor series)
e=abs(T2-T1)/3;
%If the error is below the tolerance, we stop.
if (e<epsilon)
  T=T2+(T2-T1)/3;
  Nev=3;
else
%If the errors was to big, we call the same function on two subintervals [a,(a+b)/2] and [(a+b)/2,b]
%We have to allow only have of the error on each of the subintervals.
   [T11,Nev1,e1]=trapezoid_adaptive(f,a,c,epsilon/2);
   [T21,Nev2,e2]=trapezoid_adaptive(f,c,b,epsilon/2);
   T=T11+T21;
   Nev=Nev1+Nev2;
%Finally we sum up together the results.
   e=e1+e2;
end


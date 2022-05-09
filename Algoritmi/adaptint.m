function [Q,Nev] = adaptint(f,a,b,Tol)
  fa = f(a); fb = f(b);
  QT = (b-a)/2*(fa+fb);        % Trapezoid rule

  c = (a+b)/2; fc = f(c);      % evaluate f in midpoint
            % count function evaluations
  plot([c c],[-1,1]*1e-2,'b'); % plot new point

  QS = (b-a)/6*(fa+4*fc+fb);   % Simpson rule
  % for small intervals QS is much closer to I than QT
  % hence we can approximate error QT-I by QT-QS

  if abs(QT-QS)<=Tol           % if estimated error is <= Tol
    Q = QT;
    Nev=3;    %   accephot trapezoid rule value
  else
    [Q1,Nev1] = adaptint(f,a,c,Tol/2); 
    [Q2,Nev2] = adaptint(f,c,b,Tol/2);
    Q=Q1+Q2;
    Nev=Nev1+Nev2;    %   use algorithm for [a,c] and [c,b]
  end
end

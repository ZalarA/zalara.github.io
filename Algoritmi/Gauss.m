function T=Gauss(f,a,b,k,n)

% Gaussove kvadraturne formule
% Racunanje vrednosti dolocenega integrala
% Podatki:
% 		f 	zvezna funkcija
%		a		zacetna tocka intervala
%		b		koncna tocka intervala
%       k       stevilo abscis, formula reda 2k, k<= 4
%		n		stevilo podintervalov
% Rezultat:
%		T		priblizek za vrednost integrala

x = [0 0 0 0
	 -0.577350269189626 0.577350269189626 0 0
	 -0.774596669241483 0 0.774596669241483 0 
	 -0.861136311594053 -0.339981043584856 0.339981043584856 0.861136311594053]';
w = [2 0 0 0
	 1 1 0 0
	 5/9 8/9 5/9 0
	 0.347854845137454 0.652145154862546 0.652145154862546 0.347854845137454];
h = (b-a)/n;
T = 0;
   for i = 1:n
T = T + w(k,:)*f(a+(i-0.5+x(:,k)/2)*h);
   end
T = T*h/2;
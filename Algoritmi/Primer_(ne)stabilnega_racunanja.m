%Racunamo izraz koren(1+x)-1 na dva nacina:
%Prvi nacin: koren(1+x)-1.
%Drugi nacin: x/(koren(1+x)+x).

%Drugi nacin je bistveno stabilnejsi za majhne x, saj se izognemo
%odstevanju dveh priblizno enako velikih stevil.

%Poskusimo za primer x=10^(-10)
x=10^(-10)
disp(sprintf('x=', x))

disp(sprintf('sqrt(1+x)-1= %1.15f', sqrt(1+x)-1))

disp(sprintf('x/(sqrt(1+x)+1)= %1.15f', x/(sqrt(1+x)+x)))
 
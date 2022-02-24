#Raèunanje pogojenostnega števila nekaterih matrik

%Iskanje preseèišèa dveh pravokotnih premic x+y=1, x-y=2.
%Matrika sistema je A=[1 1; 1 -1]
%Njena pogojenostna števila:
A=[1 1; 1 -1]

disp(sprintf('Pogojenostno stevilo v 1-normi matrike A= %1.3f', cond(A,1)))
disp(sprintf('Pogojenostno stevilo v 2-normi matrike A= %1.3f', cond(A,2)))
disp(sprintf('Pogojenostno stevilo v Frobeniusovi normi matrike A= %1.3f', cond(A,"fro")))
disp(sprintf('Pogojenostno stevilo v supremum-normi matrike A= %1.3f', cond(A,Inf)))

%Iskanje preseèišèa dveh skoraj vzporednih premic x+0.99y=1, 0.99x+0.98y=2.
%Matrika sistema je A=[1 0.99; 0.99 0.98]
%Njena pogojenostna števila:
A=[1 0.99; 0.99 0.98]

disp(sprintf('Pogojenostno stevilo v 1-normi matrike A= %1.3f', cond(A,1)))
disp(sprintf('Pogojenostno stevilo v 2-normi matrike A= %1.3f', cond(A,2)))
disp(sprintf('Pogojenostno stevilo v Frobeniusovi normi matrike A= %1.3f', cond(A,"fro")))
disp(sprintf('Pogojenostno stevilo v supremum-normi matrike A= %1.3f', cond(A,Inf)))

%Pogojenostno število Hilbertove matrike, definirane kot
%H(i, j) = 1 / (i + j - 1)

H=hilb(5)

disp(sprintf('Pogojenostno stevilo Hilbertove matrike H velikosti 5= %1.3f', cond(H)))
disp(sprintf('Pogojenostno stevilo nakljucne matrike velikosti 5= %1.3f', cond(rand(5))))

%S Hilbertovo matriko velikosti 15x15 rešujemo sistem Hx=v, kjer je v=H*[1,...,1]^T
%Rezultat x bi moral biti [1,...,1]^T, toda x-[1,...,1]^T ni enak 0.

H=hilb(15); v=H*ones(15,1); x=H\v; 

disp(sprintf('Naj bo H Hilbertova matrika velikosti 15 in v=H*u, kjer je u vektor samih 1.'))
disp(sprintf('Resujemo sistem Hx=v. Resitev bi moral biti vektor samih 1.'))
disp(sprintf('Dobimo pa'))
x
disp(sprintf('Norma napake x-u je=%1.5f', norm(x-ones(15,1))))



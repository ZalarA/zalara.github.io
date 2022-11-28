%Finding a global mimimum of the function (x^2+1)^2+(y^2+1)^2+(x+y+1)^2
%with Lasserre relaxation technique

fprintf(['Iscemo GLOBALNE ekstreme funkcije\n'...
        ' f(x(1),x(2))=(x(1)^2+1)^2+(x(2)^2+1)^2+(x(1)+x(2)+1)^2\n'...
        'z uporabo Lasserrejevih hierahij.\n\n'
        ])

clear all
mpol x1 x2

mpol x1 x2

f=(x1^2+1)^2+(x2^2+1)^2+(x1+x2+1)^2

pause

fprintf(['Prevedemo problem v SDP:\n'])

pause

P=msdp(min(f))

pause

fprintf(['Uporabimo SDP solver, ki reši SDP:\n'])

pause

[status,object]=msol(P)

mu=meas;

pause

fprintf(['Optimalna momenta matrika je:\n'])

double(mmat(mu))

pause

fprintf(['Globalni minimumi so:\n'])

double(meas)

mv=mvec(mu);



clear all
mpol x;
%mset('yalmip','mosek');

%stopnja polinomov
n=20;

%stevilo primerov
m=50;

%seznami koeficientov polinomov
polinomi=zeros(n+1,m);

%S in Z sta spodnja in zgornja meja na stopnjo hierarhije
S=ceil(n/2)-1;
Z=50;

%status_sch je matrika, ki ima v i-ti vrstici rezultate
%za i-ti polinom, v j-tem stolpcu pa status j-te Lasserrejeve hierarhije
%status=-2 pomeni, da se ni še niè zgodilo
%status=-1 pomeni, da SDP solver ne uspe
%status=0 pomeni, da rešitev SDP-ja ni globalni optimum
%status=1 pomeni globalno optimalnost
status_sch=ones(m,Z-S-1)*(-2);
status=-2;

%object_sch je matrika, ki ima v i-ti vrstici rezultate
%za i-ti polinom, v j-tem stolpcu pa vrednost j-te Lasserrejeve hierarhije
object_sch=zeros(m,Z-S-1);

%naravni opis množice [-1,1] za Schmuedgenov Psatz 
K_sch=[x+2>=0,1/2-x>=0,(x+2)*(1/2-x)>=0];

%ponavljamo raèunanje minimuma z Lasserrejevimi hierhijami
for i=1:m
    %nakljuèen polinom stopnje n-1 v eni spremenljivki
    b=rand(n+1,1);
    %b=normrnd(0,1,n+1,1);
    v=[x].^(0:n);
    f=v*b;
    polinomi(:,i)=b;
    
    %k je najmanjša Lasserejeva hierarhija
    k=ceil(n/2);
    status=-2;
    
    %resuj hierarhijo
    while status<1 & k<ceil(n/2)+1
        P=msdp(min(f),K_sch,k);
        [status,object]=msol(P);
        status_sch(i,k-S)=status;
        k=k+1;  
    end
end

fprintf('Izmed ')
m
fprintf(' primerov je uspešnih')
sum(status_sch(:,1))

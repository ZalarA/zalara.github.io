clear all
mpol x;
%mset('yalmip','mosek');
fprintf('We optimize univariate polynomials of degree n on [-1,1].\n\n')
pause
%stopnja polinomov
n=20
pause
fprintf('\n\n The number of examples is m:\n\n')
pause
%stevilo primerov
m=30

%seznami koeficientov polinomov
polinomi=zeros(n+1,m);

%S in Z sta spodnja in zgornja meja na stopnjo hierarhije
S=ceil(n/2)-1;
Z=50;

%status_sch je matrika, ki ima v i-ti vrstici rezultate
%za i-ti polinom, v j-tem stolpcu pa status j-te Lasserrejeve hierarhije
%status=-2 pomeni, da se ni �e ni� zgodilo
%status=-1 pomeni, da SDP solver ne uspe
%status=0 pomeni, da re�itev SDP-ja ni globalni optimum
%status=1 pomeni globalno optimalnost
status_sch=ones(m,Z-S-1)*(-2);
status=-2;

%object_sch je matrika, ki ima v i-ti vrstici rezultate
%za i-ti polinom, v j-tem stolpcu pa vrednost j-te Lasserrejeve hierarhije
object_sch=zeros(m,Z-S-1);

%naravni opis mno�ice [-1,1] za Schmuedgenov Psatz 
pause
fprintf('The natural description of [-1,1]:\n\n')
pause
K_sch=[x-1>=0,1-x>=0,(1-x)*(1+x)>=0]
pause
%ponavljamo ra�unanje minimuma z Lasserrejevimi hierhijami
for i=1:m
    %naklju�en polinom stopnje n-1 v eni spremenljivki
    b=rand(n+1,1);
    %b=normrnd(0,1,n+1,1);
    v=[x].^(0:n);
    f=v*b;
    polinomi(:,i)=b;
    
    %k je najmanj�a Lasserejeva hierarhija
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

fprintf('Among ')
m
fprintf(' examples, the number of successful ones is ')
1/2*(sum(status_sch(:,1)+1))

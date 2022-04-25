fprintf(['Pogojenostno stevilo Vandermondovih matrik na n ekvidistantnih\n'... 
          'toèkah intervala [0,1].\n\n'])
pause
n=5;
vander(0:1/n:1);
seznam=[5,10,20];
for i=1:3
  n=seznam(i);
  disp(sprintf('n=%1d, kappa=%15.15f',n,cond(vander(0:1/n:1))))
end
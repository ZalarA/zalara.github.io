function [X,Y,H]=DOPRI5_eng(f,x0,y0,b,epsilon,sigma)

% Method DOPRI5
% Computing the solutions of the differential equation with step size control
% Data
%               f            right hand side of the DE
%               x0                      initial point
%               y0                      initial value of the solution
%               b                       right endpoint of the interval
%               epsilon         tolerance of the local error
%               sigma           some coefficient in the interval (0,1) to control the local error (tipically 0.8)
% Result:
%               H                       the step sizes in the solution
%               X                       X coordinates of the solution
%               Y                       approximate solutions of the DE

y = y0; Y = [y];
x = x0; X = [x];
h=b-x0;
H = [0];   

while x < b
   k1 = h*f(x,y);
   k2 = h*f(x + h/5, y + k1/5);
   k3 = h*f(x + h*0.3, y + k1*0.075 + k2*0.225);
   k4 = h*f(x+h*0.8, y+44*k1/45-56*k2/15+32*k3/9);
   k5 = h*f(x+8*h/9, y+19372*k1/6561-25360*k2/2187+64448*k3/6561-212*k4/729);
   k6 = h*f(x+h, y+9017*k1/3168-355*k2/33+46732*k3/5247+49*k4/176-5103*k5/18656);
   k7 = h*f(x+h, y+35*k1/384+500*k3/1113+125*k4/192-2187*k5/6784+11*k6/84);
   le = 71*k1/57600-71*k3/16695+71*k4/1920-17253*k5/339200+22*k6/525-k7/40;
   nle = norm(le);
   if(nle<epsilon*h)
      y = y + (5179*k1/57600+7571*k3/16695+393*k4/640-92097*k5/339200+187*k6/2100+k7/40);
      Y = [Y y];                              
      x = x+h;                                                             
      X = [X x];
      H = [H h];
      h = h*sigma*(epsilon*h/nle)^(1/5);
      if x+h > b
         h = b-x;
      end
   else
      h = h/2;                                                                  %H = [H -h];
   end
end


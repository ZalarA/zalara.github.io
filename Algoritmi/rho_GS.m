fprintf('We approximate the Goemans-Williamson constant.\n\n')

fprintf(['Let h be the function\n\n'...
        '   h(x)=pi/2*(1-cos(x))/x.\n\n'])

h=@(x)pi/2*(1-cos(x))./x
    
fprintf(['The derivative of h is equal to\n\n'...
        '   devh(x)=pi/2*(sin x*x-(1-cosx))/x^2.\n\n'])

devh=@(x)pi/2*(sin(x).*x-(1-cos(x)))./x.^2
    
fprintf(['We plot devh on [0,pi].\n\n'])

x=linspace(0,pi);
plot(x,devh(x));

fprintf(['Notice that there is only one zero of devh,\n'...
        'which is aproximately:'])
    
x0=fzero(devh,1)

fprintf(['The value of x0 in h is:\n\n'])

h(x0)
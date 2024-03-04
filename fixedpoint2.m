clc
clear
f=@(x)0.5*sqrt(10-x^3);
x0=1;
toll=10^(-2);

for i=1:1000
    x1=f(x0);
    if abs(x1-x0)<toll
        disp(vpa(x1));
        break;
        
    end
    x0=x1;
end
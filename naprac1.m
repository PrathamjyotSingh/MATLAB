clear
clc
f=@(x)cos(x)-x*exp(x);
x0=4;
x1=5;
x2=x1-(x1-x0)/(f(x1)-f(x0))*f(x1);
n=1;
while abs(x2-x1)<10^(-5) || abs((x2-x1)/x2)<10^(-5)
    x2=x1-(x1-x0)/(f(x1)-f(x0))*f(x1);
    x0=x1;
    x1=x2;
    n=n+1;
end
disp(x2)
disp(n)

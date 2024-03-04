clc
clear
f=@(x)-2*sin(3.14*x);
x0=1;
a=1;
b=2;
toll=10^(-2);
x=a:toll:b;
if all(f(x)<a) || all(f(x)>b)
      disp("wrong function")
end
for i=1:1000
    x1=f(x0);
    if abs(x1-x0)<toll 
        disp(x1);
        break;
    end
    x0=x1;
end
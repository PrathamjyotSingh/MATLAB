clear
clc
f=@(x)x-2^(-x);
toll=10^(-3);
a=0;
b=1;
if(f(a)*f(b)<0)
    disp('true')
else
    disp('false')
end
count=0;
c=(a+b)/2;
while abs(a-b)>toll
      c=(a+b)/2;
      count=count+1;
      if f(a)*f(c)<0
           b=c;
      else
           a=c;
      end
end
disp(c)
disp(count)

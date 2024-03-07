clc
clear
x = [0,0.25,0.5,0.75];
y = [1,1.64872,2.71828,4.48169];
n = length(x);
p = 0.43;
for i =1:n
    l(i) = 1;
    for j = 1:n
        if j ~=i
            l(i) = (p-x(j))*l(i)/(x(i)-x(j));
        end
    end
end
sum = 0;
disp(l)
for i = 1:n
    sum = sum+l(i)*y(i);
end
disp (sum);
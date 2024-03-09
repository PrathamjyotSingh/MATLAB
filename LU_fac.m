clc
clear
A=[2 -1 1;
3 3 9;
3 3 5];

%A = [10,8,-3,1;2,10,1,-4;3,-4,10,1;2,2,-3,10];
n = size(A,1);
L=eye(n);
for j=1:n-1
    for i=j+1:n
        L(i,j) = A(i,j)/A(j,j);
        A(i,:) = A(i,:)-L(i,j)*A(j,:);
    end
end
U=A;
disp(L)
disp(U)
%LU分解
function [x]= LUsolve(L,U,b)
n=size(L,1);
%Step 1:Ly=b;slove y(forward substitution)
y=1:n;
y=y';
y(1)=b(1)/L(1,1);
for i=2:n
  y(i)=(b(i)-L(i,1:i-1)*y(1:i-1))/L(i,i);
end
%Step 2:Ux=y(backward substitution)
x=1:n;
x=x';
x(n)=y(n)/U(n,n);
for i=n-1:-1:1
  x(i)=(y(i)-U(i,i+1:n)*x(i+1:n))/U(i,i); 
end
end

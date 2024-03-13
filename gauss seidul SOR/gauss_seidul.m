%A is strictly diagonal dominant
%solve Ax=b by gauss-seidul iteration
function [x,iteration] = gauss_seidul(A,b,errortol,maxstep)
D=diag(diag(A));
L=tril(A)-D;
x0=zeros(size(A,1),1); %set initial vector
x=x0+(D+L)\(b-A*x0);
iteration=1;
while norm(A*x-b)>errortol && iteration<maxstep
x=x+(D+L)\(b-A*x);
iteration=iteration+1;
end
end
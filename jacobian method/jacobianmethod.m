function [x,k] = jacobianmethod(A,b,errtol,maxstep)
D=diag(diag(A));
R=A-D;
x0=zeros(size(A,1),1);
xtemp=x0;
k=0;
while norm(A*xtemp-b)>errtol &&k<maxstep
    x=(D^-1)*(b-R*xtemp);
    xtemp=x;
    k=k+1;
end
end
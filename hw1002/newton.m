function [sol] = newton(f,fdiff,x0,TOL)
n=1;
x(n)=x0-f(x0)/fdiff(x0);
while (abs(x(n)-x0)>=TOL && n<=100)
    x0=x(n);
    n=n+1;
    x(n)=x0-f(x0)/fdiff(x0);
end
sol=x(n);
end
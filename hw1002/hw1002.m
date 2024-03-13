clear;
f1=@(x) x^4 - 2*x^3 - 4*x^2 + 4*x + 4;
f1diff=@(x) 4*x^3 - 6*x^2 - 8*x + 4;
f2=@(x) x^5 + 11*x^4 - 21*x^3 - 10*x^2 - 21*x - 5;
f2diff=@(x) 5*x^4 + 44*x^3 - 63*x^2 - 20*x - 21;
f3=@(x) x^5 - x^4 + 2*x^3 - 3*x^2 + 1*x - 4;
f3diff=@(x) 5*x^4 - 4*x^3 + 6*x^2 - 6*x +1;
TOL=10^-16;

%%find root of f1
soltemp=0;  %0 is not a root, trivil
for x0=-10:1:10
sol=newton(f1,f1diff,x0,TOL);
if abs(soltemp-sol)>10^-10
fprintf('One of the solution of f1(x)=0 is %24.16e\n',sol );
soltemp=sol;
end
end
%%find root of f2
soltemp=0;   %0 is not a root, trivil
for x0=-15:0.1:15
sol=newton(f2,f2diff,x0,TOL);
if abs(soltemp-sol)>10^-10
fprintf('One of the solution of f2(x)=0 is %24.16e\n',sol );
soltemp=sol;
end
end
%%find root of f3
soltemp=0;   %0 is not a root, trivil
for x0=-1:0.1:1
sol=newton(f3,f3diff,x0,TOL);
if abs(soltemp-sol)>10^-10
fprintf('One of the solution of f3(x)=0 is %24.16e\n',sol );
soltemp=sol;
end
end
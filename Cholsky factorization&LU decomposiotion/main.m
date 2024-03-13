%Compare the time-spending of vector version of gauss factoriaztion and
%cholesky factorization while solving linear system with 50-1000 unknown variables
%%%%%%%
%To make sure the random number is the same everytime we run the code
%Convenient for debugging
s=RandStream('mt19937ar','seed',0);
RandStream.setGlobalStream(s);
%%%%%
for n=50:1000
%set A and b
a=randn(1,n-1);
b=randn(n,1);
A=diag([0;abs(a)']);
A(1,2:n)=a;
A(2:n,1)=A(1,2:n)';
A(1,1)=sum(abs(a));
A=A+5*eye(n);
%cholesky
timer1=tic;
[G]=Choleskyfac(A);
[x]=LUsolve(G,G',b);
t1(n)=toc(timer1);
%gauss
timer2=tic;
[AA,bb]=GE_vector(A,b);
[x]=upp_solver(AA,bb);
t2(n)=toc(timer2);
end
n=50:1:1000;
plot(n,t1(n),n,t2(n));
legend('cholesy','gauss');
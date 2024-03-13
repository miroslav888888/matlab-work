%SOR w=(0,2)
A=rand(100,100)+100*eye(100);  %diagonally dominant
A=A+A';    %symmetric
b=rand(100,1);
D=diag(diag(A));
L=tril(A)-D;
U=triu(A)-D;
for ww=1:1999
    x=zeros(size(A,1),1); %initial vector
    w=ww/1000;
    k(ww)=0;
    while k(ww)<10000 && norm(A*x-b)>10^-14
x=x+w*(D+w*L)^-1*(b-A*x);
k(ww)=k(ww)+1;
    end
end
 plot(0.001:0.001:1.999,k(1:1999))
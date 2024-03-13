function [G]= Choleskyfac(A)
n=size(A,1);
G=zeros(n);
for k=1:n
    G(k,k)=sqrt(A(k,k)-sum(G(k,1:k-1).*G(k,1:k-1)));
    for i=k+1:n
        G(i,k)=(A(i,k)-sum(G(i,1:k-1).*G(k,1:k-1)))/G(k,k);
    end
end
end
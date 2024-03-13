function [AA,bb] = GE_vector(A,b)
        n=size(A,1);
       for k=1:n-1 %從第一列開始往下消去
    for i=k+1:n %從第k+1列開始被削去
       t=A(i,k)/A(k,k); %消去的係數
       A(i,k)=0; %第k列的列首，直接設定為0
       b(i)=b(i)-t*b(k);
       A(i,k+1:n)=A(i,k+1:n)-t*A(k,k+1:n);
    end
       end
       AA=A;
       bb=b;
end
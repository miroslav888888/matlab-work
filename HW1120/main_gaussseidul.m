clc
clear
errtol=10^-14;
maxstep=10000;
for n=50:1000
    A=rand(n,n)+n*eye(n);
    b=rand(n,1);
    timer=tic;
    [x,k(n)]=gauss_seidul(A,b,errtol,maxstep);
    t(n)=toc(timer);
end
tiledlayout(2,1);
%Top Plot(matrix size-time)
ax1=nexttile;
plot(ax1,50:1000,t(50:1000))
title(ax1,'Matrix Size - Time Spending')
%Bottom Plot(matrix size-iteration)
ax2=nexttile;
plot(ax2,50:1000,k(50:1000))
title(ax2,'Matrix Size - Iteration')
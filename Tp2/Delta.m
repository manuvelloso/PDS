function x = Delta(A,t0,N)

n=0:N-1;
x=zeros(size(n));
x(t0+1)=A;
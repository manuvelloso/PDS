function x = Exponencial(A,t0,N,a)
n=0:N-1;

u=zeros(size(n));
u(t0+1:end)=1;
x=A*exp(a*(n-t0)).*u;
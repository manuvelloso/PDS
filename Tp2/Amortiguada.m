function x = Amortiguada(A,P,N,a)

n=0:N-1;
u=ones(size(n));
x=A*sin(2*pi*P*n/N).*exp(-a*n).*u;
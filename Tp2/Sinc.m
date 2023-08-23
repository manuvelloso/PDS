function x = Sinc(A,P,t0,N)
n=0:N-1;
%x=sin(2*pi*P*(n-t0)/N)./(2*pi*P*(n-t0)/N);
x=A*sinc(2*P*(n-t0)/N);

function Ejercicio5(L,dk,pk)
n=0:L-1;
A=dk;
B=pk;

h=impz(B,A,n);
stem(n,h);
ylabel('h[n]');
xlabel('n');
grid


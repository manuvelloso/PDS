%% Ejercicio 7
function Ejercicio7(B,A,L,k)
n=0:L-1;
x=k*ones(size(n));
y=filter(B,A,x); %escalon unitario
stem(n,y);
grid
xlabel('n[]');
ylabel('y[n]');
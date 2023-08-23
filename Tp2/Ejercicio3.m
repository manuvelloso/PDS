%% Ejercicio 3

N=10;
n=0:N-1;

% Señales
a=Delta(1,0,N)-Delta(0.5,1,N);
A=fft(a);

B=1./A;
b=ifft(B);

% Verificación
d=conv(a,b);
n2=0:(N+N-2);

% Gráficos
subplot(3,1,1)
stem(n,a);
grid
xlabel('n');
ylabel('a[n]');

subplot(3,1,2)
stem(n,b);
grid
xlabel('n');
ylabel('b[n]');

subplot(3,1,3)
stem(n2,d);
grid
xlabel('n');
ylabel('a[n]*b[n]');
%% Ejercicio 8
N=3;
n=0:N-1;
h=zeros(size(n));
h(1)=0.5;
h(2)=-1;
h(3)=0.5;

[H,W]=freqz(h,1);
subplot(2,1,1)
stem(h);
ylabel('Diferenciador h[n]'); %elimina la continua
xlabel('n');
grid;

subplot(2,1,2)
plot(W,abs(H));
xlabel('\omega');
ylabel('|H|');
grid;

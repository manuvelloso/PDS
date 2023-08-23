%% Ejercicio 7
fe=50; %Hz
fs=250; %Hz

we=2*pi*fe/fs; %frecuencia normalizada en plano z
N=3; %tamaño del filtro FIR (orden +1)

n=0:N-1;
h=zeros(size(n));
h(1)=1/(2*(1-cos(we)));
h(2)=-cos(we)/(1-cos(we));
h(3)=1/(2*(1-cos(we)));

[H,W]=freqz(h,1);
f=W*fs/(2*pi);

subplot(2,1,1)
stem(h);
ylabel('Elimina banda h[n]');
xlabel('n');
grid;

subplot(2,1,2)
plot(W,abs(H));
grid;

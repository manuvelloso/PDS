%% Ejercicio 20
% Considerando la secuencia original x[n] ? x(nTs), filtre la misma 
% mediante un filtro Pasa Bajos de Fase cero con un Angulo de Corte de 
% wc=pi/M, con los valores de M del inciso anterior. 
% Observe los 3 resultados obtenidos. A esta señal filtrada denomínela v[n]

N=2048;
a=-50;
Fs=1000;
Ts=1/Fs;

n=0:N-1; %eje discreto
t=n*Ts; %eje de tiempos mestreado
x=exp(a*t);

f=0:Fs/N:(N-1)*Fs/N; %eje de frecuencias discretas
w=2*pi*f;

X=fft(x);
X_desp=fftshift(X);

%% Para M=2
M=2;

wc2=pi/M;
kc2=wc2*N/(2*pi);
H2=FPB(round(kc2),x);
v2=abs(ifft(X.*H2));

%% Para M=4
M=4;

wc4=pi/M;
kc4=wc4*N/(2*pi);
H4=FPB(round(kc4),x);
v4=abs(ifft(X.*H4));

%% Para M=8
M=8;

wc8=pi/M;
kc8=wc8*N/(2*pi);
H8=FPB(round(kc8),x);
v8=abs(ifft(X.*H8));

%% Plots

subplot(4,1,1)
plot(t,x);
grid;
xlabel('n');
ylabel('x(t)');

subplot(4,1,2)
plot(t,v2);
grid;
xlabel('t [s]');
ylabel('v(t) M=2');

subplot(4,1,3)
plot(t,v4);
grid;
xlabel('n');
ylabel('v(t) M=4');

subplot(4,1,4)
plot(t,v8);
grid;
xlabel('t [s]');
ylabel('v(t) M=8');
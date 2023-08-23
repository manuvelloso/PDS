%% Ejercicio 22
% Genere la siguiente señal discreta para valores L =2 L = y 4 L = 8 , 
% es decir, como el bloque sobremuetreador visto en la teoría o 
% ejercicios anteriores. Luego, observe el espectro de Fourier 
% obtenido para cada uno de estos sobremuestreos. ¿Qué observa respecto 
% al espectro del inciso 17)? 

N=2048;
a=-30;
Fs=1000;
Ts=1/Fs;

n=0:N-1; %eje discreto
t=n*Ts; %eje de tiempos mestreado
x=exp(a*t);

f=0:Fs/N:(N-1)*Fs/N; %eje de frecuencias discretas
w=2*pi*f;

X=fft(x);
X_desp=fftshift(X);
x=exp(a*t);

%% L=2
L=2;
v2=upsample(x,L);

Ts2=Ts/L;
t2=Ts2*(0:N*L-1);

V2=fft(v2);
f2=1/Ts2;
f2_=0:f2/(N*L):f2-f2/(N*L); %eje de frecuencias para la sobre

%% L=4
L=4;
v4=upsample(x,L);

Ts4=Ts/L;
t4=Ts4*(0:N*L-1);

V4=fft(v4);
f4=1/Ts4;
f4_=0:f4/(N*L):f4-f4/(N*L); %eje de frecuencias para la sobre

%% L=8
L=8;
v8=upsample(x,L);

Ts8=Ts/L;
t8=Ts8*(0:N*L-1);

V8=fft(v8);
f8=1/Ts8;
f8_=0:f8/(N*L):f8-f8/(N*L); %eje de frecuencias para la sobre

%% Ploteo
subplot(4,2,1)
plot(t,x);
grid;
xlabel('t [s]');
ylabel('x(t)');
subplot(4,2,2)
plot(f,abs(X));
grid;
xlabel('f [Hz]');
ylabel('|X(f)|');

subplot(4,2,3)
plot(t2,v2);
grid;
xlabel('n');
ylabel('y (M=2)');
subplot(4,2,4)
plot(f2_,abs(V2));
grid;
xlabel('t [s]');
ylabel('f[Hz] M=2');

subplot(4,2,5)
plot(t4,v4);
grid;
xlabel('n');
ylabel('y[n](M=4)');
subplot(4,2,6)
plot(f4_,abs(V4));
grid;
xlabel('t [s]');
ylabel('f[Hz] M=4');

subplot(4,2,7)
plot(t8,v8);
grid;
xlabel('n');
ylabel('y[n](M=8)');
subplot(4,2,8)
plot(f8_,abs(V8));
grid;
xlabel('t [s]');
ylabel('f[Hz] M=8');
%% Ejercicio 15
% Dise�e un filtro Pasa Altos Chebyshev IIR con una frecuencia de �3 dB a 1 KHz y una 
% banda de atenuaci�n de 50 dB a 0.5 KHz. La frecuencia de muestreo que se utiliza para 
% el dise�o del filtro es de 10 KHz. Verifique su dise�o graficando la respuesta al impulso 
% del filtro como as� tambi�n su respuesta en frecuencia. Utilice el comando de MatLab 
% fdatool para este algoritmo. 

fa=500; %Frecuencia de atenuaci�n
fs=10000; %Frecuencia de muestreo
fc=1000; %Frecuencia de corte

wa=2*pi*fa;
ws=2*pi*fs;
wc=2*pi*fc;

d1=1; %dB de paso
d2=50; %50dB de banda de atenuaci�n

% Orden y Frecuencia Natural de Dise�o
[N,Wn]=cheb1ord(wa,wc,d1,d2,'s');	
[Cs,Ds]=cheby1(N,1,1,'s'); %PORQUE WN ES 1????

% Transformaci�n de pasa Bajos a Passa Altos
[NUMT,DENT]=lp2hp(Cs,Ds,Wc);

H=tf(NUMT,DENT)
figure(1)
bode(H);
grid;

[Nz,Dz]=bilinear(NUMT,DENT,fs);
[Hd,W]=freqz(Nz,Dz);

% Filtro Chevyshev digital
H_=tf(Nz,Dz,1/fs); %Transferencia
Z=roots(Nz); %Ceros
P=roots(Dz); %Polos

%Grafico
f=fs*W./(2*pi);
figure(2)
subplot(2,1,1)
plot(f,abs(Hd));
grid;
subplot(2,1,2)
zplane(Z,P);
grid;
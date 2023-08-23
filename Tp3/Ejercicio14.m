%% Ejercicio 14
% Diseñe un filtro Pasa Bajos IIR usando una aproximación de Chebyshev con 1dB de 
% ripple en la banda pasante, una frecuencia de corte de 500 Hz, 45 dB de atenuación a 
% 1KHz. La frecuencia de muestreo que se utiliza para el diseño del filtro es de 10 KHz. 
% Verifique su diseño graficando la respuesta al impulso del filtro como así también su 
% respuesta en frecuencia. Utilice el comando de MatLab fdatool para este algoritmo

fc=500; %Frecuencia de corte [Hz]
fs=10000; %Frecuencia de muestreo
fa=1000; %Frecuencia de atenuación

wc=2*pi*fc;
wa=2*pi*fa;

d1=1; % 1dB de ripple en banda de paso
d2=45; % 45 dB de atenuación a 1KHz

% Orden y Frecuencia Natural de Diseño
[N,Wn]=cheb1ord(wc,wa,d1,d2,'s');	
[Cs,Ds]=cheby1(N,1,Wn,'s');

H=tf(Cs,Ds)
figure(1)
bode(H);
grid;

[Nz,Dz]=bilinear(Cs,Ds,fs);
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

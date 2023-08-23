%% Ejercicio 16
% Diseñe un filtro Pasa Banda IIR Elíptico de 6to. orden centrado en 4 KHz con 1 Khz de 
% ancho de banda, un ripple en la banda de paso de 1 dB y un ripple en la banda de 
% atenuación de por lo menos 100 dB. La frecuencia de muestreo que se utiliza para el 
% diseño del filtro es de 40 KHz. Verifique su diseño graficando la respuesta al impulso 
% del filtro como así también su respuesta en frecuencia. Utilice el comando de MatLab 
% fdatool para este algoritmo.

fa=1000; %Frecuencia de ancho de banda
fs=40000; %Frecuenia de muestreo
or_centrado=4000; %Orden de centrado
n=6;

wa=2*pi*fa;
ws=2*pi*fs;
wo=2*pi*or_centrado;


d1=1; %1 dB para ripple en la banda de paso
d2=100; %100dB para la banda de atenuación

% Orden y Frecuencia Natural de Diseño
[Es,Ds]=ellip(n,d1,d2,d1,'s');	

% Transformación de pasa Bajos a Passa Altos
[NUMT,DENT]=lp2bp(Es,Ds,wo,wa);

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


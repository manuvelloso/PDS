%% Ejercicio 13
% Diseñe un filtro Pasa Bajos Butterworth IIR suponiendo que se requiere que la banda de 
% paso sea constante dentro de 1 dB para frecuencias por debajo de 100 Hz y que la banda 
% de atenuación sea mayor que 15 dB para frecuencias superiores a 150 Hz (se 
% recomienda utilizar MatLab para obtener la función de transferencia del filtro pedido). 
% La frecuencia de muestreo que se utiliza para el diseño del filtro es de 1 KHz. Verifique 
% su diseño graficando la respuesta al impulso del filtro como así también su respuesta en 
% frecuencia. Utilice el comando de MatLab fdatool para este algoritmo.

fs=1000; %Frecuencia de muestreo [Hz]
f1=100; %Frecuencia de corte
f2=150;

w1=2*pi*f1;
w2=2*pi*f2;

d1=1; %1dB
d2=15; %15dB;

% Orden y Frecuencia Natural de Diseño
[N,Wn]=buttord(w1,w2,d1,d2,'s');
[Bs,Ds]=butter(N, Wn,'s');

H=tf(Bs,Ds)
figure(1)
bode(H);
grid;

%Transformada Bilinear para obtener IIR
[Nz,Dz]=bilinear(Bs,Ds,fs);
[Hd,W]=freqz(Nz,Dz);

%Filtro
H_=tf(Nz,Dz,1/fs) %acá agrego el tiempo de muestreo
Z=roots(Nz); %ceros
P=roots(Dz); %polos

%Grafico
f=fs*W/(2*pi);
figure(2)
subplot(2,1,1)
plot(f, abs(Hd));
grid;
subplot(2,1,2);
zplane(Z,P);
grid;




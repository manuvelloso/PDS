clear all
close all
clc

fs=500; %Frecuencia Muestreo
t=0:1/fs:0.5-1/fs; %Vector tiempos
N=length(t);
w=0:2*pi/N:2*pi-2*pi/N; %Vector de frecuencias angulares discretas intervalo [0,2pi)
A=10; %Amplitud
f=20; %Frecuencia

%% Ejemplo: suma de tres senoidales
x = A*sin(2*pi*f*t) + A*0.4*sin(2*pi*2*f*t) + 2*A*sin(2*pi*5*f*t) ;%+ A/2*rand(1,length(t));
nivel= 0.8; %nivel de energia a conservar
x2 = filtroNivel_Energia(x,nivel);

%%
figure
subplot(4,1,1)
plot(t,x)
title('Senal Original')
xlabel('Tiempo [s]')
subplot(4,1,2)
stem(w/pi,abs(fft(x)))
title('FFT de la Senal Original')
xlabel('Frecuencia discreta normalizada (w/pi)')
subplot(4,1,3)
plot(t,x2)
title(['Senal filtrada al ' mat2str(nivel*100) '% de su Energia total original'])
xlabel('Tiempo [s]')
subplot(4,1,4)
stem(w/pi,abs(fft(x2)))
title('FFT de la Senal Filtrada')
xlabel('Frecuencia discreta normalizada (w/pi)')

%% Ejemplo: pulso
x=zeros(size(t));
x(1:50)=1;

nivel= 0.95; %nivel de energia a conservar
x2 = filtroNivel_Energia(x,nivel);

%%
%%
figure
subplot(4,1,1)
plot(t,x)
title('Senal Original')
xlabel('Tiempo [s]')
subplot(4,1,2)
stem(w/pi,abs(fft(x)))
title('FFT de la Senal Original')
xlabel('Frecuencia discreta normalizada (w/pi)')
subplot(4,1,3)
plot(t,x2)
title(['Senal filtrada al ' mat2str(nivel*100) '% de su Energia total original'])
xlabel('Tiempo [s]')
subplot(4,1,4)
stem(w/pi,abs(fft(x2)))
title('FFT de la Senal Filtrada')
xlabel('Frecuencia discreta normalizada (w/pi)')
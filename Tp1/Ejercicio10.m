%% Ejercicio 10
% A partir de un archivo de audio (provisto en el campus o cualquiera 
% que desee), visualice la señal en tiempo y frecuencia 
% (transformada discreta de Fourier) y escuche la misma en una 
% resolución de 24, 16 y 8 bits

[x,fs]=audioread('Audio_TP1_Ej_10.wav'); %abro el archivo de audio 
%fs es la frecuencia de muestreo

Ts=1/fs;             %periodo de muestreo
N=length(x);         %cantidad de puntos
t=0:Ts:(N-1)/fs;     %vector de tiempos
f=0:fs/N:fs-fs/N;    %va hasta ahi porque sino se repite la señal

X=fft(x);            %transformada discreta de fourier (TDF)

subplot(2,1,1)
plot(t,x); 
xlabel('t [seg]')
ylabel('x(t)')
grid

subplot(2,1,2)
plot(f,abs(X)) %grafico el módulo
xlabel('f[Hz]')
ylabel('X(f)')
grid

bits=24;
disp('Escuchando la señal original (24 bits)...')
sound(x,fs,bits);
disp('Pulse una tecla para continuar...')
pause()
bits=16;
disp('Escuchando la señal 16 bits...')
sound(x,fs,bits);
disp('Pulse una tecla para continuar...')
pause()
bits=8;
disp('Escuchando la señal 8 bits...')
sound(x,fs,bits);


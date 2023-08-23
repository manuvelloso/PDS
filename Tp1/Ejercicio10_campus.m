%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         %
% Cambio de bits por muestra en una señal de audio                        %
%                                                                         %
% function x = Abrir()                                                    %
% N = Longitud de la señal discreta                                       %
%                                                                         %
%                                                                         %
% Dr. Ing. Franco Martin Pessana                                          %
%                                                                         % 
% Facultad de Ingeniería y Ciencias Exactas y Naturales                   %
% Universidad Favaloro                                                    %
%                                                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%% Cargado de la señal original para 1 canal
clear
clc
[x,fs]=audioread('Audio_TP1_Ej_10.wav');
disp('Frecuencia de muestreo de la señal de audio [Hz]:')
fs
disp('Longitud de la señal de audio [muestras]:')
N=length(x)
t=0:1/fs:(N-1)/fs;
f=0:fs/N:fs-fs/N;
M=figure(1);
set(M,'name','PDS. TP#1. Ejercicio 10','position',[500 50 1000 700]);
subplot(2,1,1)
plot(t,x)
xlabel('t [seg]')
ylabel('x(t)')
grid
X=fft(x);
subplot(2,1,2)
plot(f,abs(X))
xlabel('f [Hz]')
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
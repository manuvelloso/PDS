%% Ejercicio 2

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Utilizando las funciones sawtooth y square, escriba un programa para 
% generar 2 señales periódicas (diente de sierra y cuadrada) y grafíquelas 
% utilizando la función MatLab stem. 
% 
% Para el caso de la onda cuadrada, se puede especificar un parámetro 
% adicional que es el ciclo de trabajo, que es el porcentaje del tiempo en
% el que la señal es positiva. 
% 
% Usando este programa, genere las 100 primeras muestras de ambas 
% secuencias, con una frecuencia de muestreo de 20 kHz, un valor pico de 7, 
% 13 períodos, y para la señal cuadrada, un ciclo de trabajo del 60.       
%                                                                         %
%                                                                         %
% Sintaxis:                                                               %
%                                                                         %
% function Ejercicio2(L,Fs)                                               %
%                                                                         %
%     L = longitud de la señal deseada  
%     A = valor pico
%     P = cantidad de periodos                                            %
%                                                                         %
%                                                                         %                                         %
%                                                                         % 
% Facultad de Ingeniería y Ciencias Exactas y Naturales                   %
% Universidad Favaloro                                                    %
%                                                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Ejercicio2(L,A,P,Fs,Ct)
Ts=1/Fs;
nTs=0:Ts:(L-1)*Ts; % Tiempo discreto
n=0:L-1; %Tiempo digital
y1=A*square((2*pi*P/L)*n,Ct);
y2=A*sawtooth((2*pi*P/L)*n);

subplot(2,1,1)
stem(n,y2);
grid
ylabel('sawtooth');
xlabel('n');

subplot(2,1,2)
stem(n,y1);
grid
ylabel('square');
xlabel('n');

% L=100;
% Fs=20; %kHz
% A=7;
% P=13;
% Ct=60;
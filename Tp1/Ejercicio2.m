%% Ejercicio 2

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Utilizando las funciones sawtooth y square, escriba un programa para 
% generar 2 se�ales peri�dicas (diente de sierra y cuadrada) y graf�quelas 
% utilizando la funci�n MatLab stem. 
% 
% Para el caso de la onda cuadrada, se puede especificar un par�metro 
% adicional que es el ciclo de trabajo, que es el porcentaje del tiempo en
% el que la se�al es positiva. 
% 
% Usando este programa, genere las 100 primeras muestras de ambas 
% secuencias, con una frecuencia de muestreo de 20 kHz, un valor pico de 7, 
% 13 per�odos, y para la se�al cuadrada, un ciclo de trabajo del 60.       
%                                                                         %
%                                                                         %
% Sintaxis:                                                               %
%                                                                         %
% function Ejercicio2(L,Fs)                                               %
%                                                                         %
%     L = longitud de la se�al deseada  
%     A = valor pico
%     P = cantidad de periodos                                            %
%                                                                         %
%                                                                         %                                         %
%                                                                         % 
% Facultad de Ingenier�a y Ciencias Exactas y Naturales                   %
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
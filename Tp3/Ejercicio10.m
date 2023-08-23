%% Ejercicio 10
% Dada la respuesta en frecuencia de un filtro Pasa Bajos de primer orden 
% RC, se pide implementarlo en forma digital con un filtro IIR
% (mediante el uso de la Transformada Bilineal) con las siguientes 
% características: Frecuencia de Muestreo fs=1 KHz y una 
% frecuencia de 3 dB del filtro de 60 Hz. (***)

fs=1000; %Hz
R=1000; %Ohm
C=10*exp(-9); %Faradios
[Nz,Dz]=bilinear(1/(R*C),[1 1/(R*C)], fs);
Hz=tf(Nz,Dz,1/fs);

% LOS VALORES DE R Y C DETERMINAN LO DE (***)
bode(Hz);
grid;
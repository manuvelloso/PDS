%% Ejercicio 4
% Escriba un programa MatLab que grafique una señal sinusoidal de tiempo 
% continuo x(t)=Asin(2pif0t+phi) y su versión muestreada. 
% Evalúe y Comente que ocurre cuando la frecuencia de muestreo es: 
% a) 10 f0
% b) 4.5 f0
% c) 2 f0
% d) f0/3
% 
% Use la función hold para mantener ambos resultados. Los parámetros de 
% entrada deben ser la frecuencia de muestreo de la señal, la longitud de 
% la misma, valor pico de la senoidal, frecuencia de oscilación y 
% fase inicial.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Ejercicio4(Fs,L,A,f0,phi)
Ts=1/Fs;
n=0:(L-1); %Tiempo discreto
t=Ts*n;
W0=2*pi*f0/Fs;
x=A*sin(W0*n+phi); %senoidal discreta
x_t=A*sin(2*pi*f0*t+phi);

plot(t,x_t,'r',t,x,'o');
legend('x(t) red','x[n] blue');
ylabel('x(t) ; x[n]');
xlabel('nTs[n]');
grid
% continua -> plot


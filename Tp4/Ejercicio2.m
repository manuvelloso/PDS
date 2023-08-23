%% Ejercicio 2
% A partir de un Filtro Pasa Bajos RC de primer orden con fp=60 Hz, muestreado con una 
% frecuencia fs=1KHz, mediante la técnica de minimización de cuadrados mínimos para 
% Filtros Recursivos Adaptativos, se pide calcular las componentes RC que le dieron 
% origen al filtro RC si la señal de entrada es x(t) Realice 
% todos los cálculos diseñando una función en MatLab para tal efecto. 

fc=60;   %Frecuencia de corte en Hz
fs=1000; %Frecuencia de muestreo Hz
Ts=1/fs;
t=0:Ts:5-Ts; %vector de tiempo
xk=(2*sin(50*2*pi*t)+ sin(300*2*pi*t))';

%% El ejercicio se puede hacer de forma teórica (se calculan los componentes a mano)
wc=2*pi*fc; %Frecuencia angular de corte

a1=(2*fs-wc)/(2*fs+wc);
b0=wc/(2*fs+wc);
b1=b0;

A=[1 -a1];
B=[b0 b1];

%dk=filter(B,A,xk);
%[Bk,Ak,yk,ek]=ARMA_Adaptativo(xk,dk,1,1);

%% El ejercicio se puede hacer de forma computacional
[Nz,Dz]=bilinear([0 wc],[1 wc],fs);
dk=filter(Nz,Dz,xk);
[Bk,Ak,yk,ek]=ARMA_Adaptativo(xk,dk,1,1);

%% Grafico
H1=figure(1);
set(H1,'position',[20 30 1000 700],'Menubar','none',...
        'NumberTitle','off','name','Ejercicio 1. Filtro FIR Adaptativo');
subplot(3,1,1)
plot(t,xk);
ylabel('xk');
grid; 

subplot(3,1,2)
plot(t,yk);
ylabel('yk');
grid; 

subplot(3,1,3)
plot(t,ek);
ylabel('ek');
xlabel('k')
grid;
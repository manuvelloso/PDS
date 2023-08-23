%% Ejercicio 3
% Repita el ejercicio anterior si ahora la señal de entrada x(t) es Ruido
% Blanco Gaussiano con media cero y desvío estándar 2. 
% ¿Qué conclusiones puede sacar al respecto? Incremente el valor de ? y 
% observe que sucede con el error en la muestra k-ésima del filtro IIR 
% adaptativo diseñado, es decir e[k].

fc=60;   %Frecuencia de corte en Hz
fs=1000; %Frecuencia de muestreo Hz
Ts=1/fs;
t=0:Ts:5-Ts; %vector de tiempo
xk=2*randn(size(t)); %Señal de Ruido Blanco
%% 
Ns=2*pi*fc;
Ds=[1 2*pi*fc];
[Nz,Dz]=bilinear(Ns,Ds,fs);
dk=filter(Nz,Dz,xk);
[Bk,Ak,yk,ek]=ARMA_Adaptativo(xk',dk',1,1);

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
%% Ejercicio 5
% Realice el filtrado adaptativo (en la configuración de cancelación
% adaptativa) de una señal de electrocardiograma, con ruido de línea de 50 Hz. 

f0=50; %Frecuencia de linea
fs=250; %Frecuencia de muestreo
Ts=1/fs;

dk=ecg;
P=4;
t=0:Ts:(length(dk)-1)*Ts;

xk=sin(2*pi*f0*t);
[Bk,Ak,yk,ek]=ARMA_Adaptativo(xk',dk,P,0);

%% Grafico
H1=figure(1);
set(H1,'position',[20 30 1000 700],'Menubar','none',...
        'NumberTitle','off','name','Ejercicio 1. Filtro FIR Adaptativo');
subplot(3,1,1)
plot(t,xk);
ylabel('xk');
grid; 

subplot(3,1,2)
plot(t,dk);
ylabel('dk');
grid; 

subplot(3,1,3)
plot(t,ek);
ylabel('ek');
xlabel('k')
grid;
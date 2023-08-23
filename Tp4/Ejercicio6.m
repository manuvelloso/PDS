%% Ejercicio 6
% Realice el filtrado adaptativo (en la configuración de cancelación
% predictiva) de una señal de electrocardiograma, con ruido de línea de 50 Hz.

dk=ecg;
P=5;
N=100; %delta

fs=250;
Ts=1/fs;
t=0:Ts:(length(dk)-1)*Ts;

xk=zeros(size(dk));

% Copiar elementos de dk desplazados N posiciones hacia la derecha en xk
xk(N+1:end)=dk(1:end-N);

[Bk,Ak,yk,ek]=ARMA_Adaptativo(xk,dk,P,0);

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



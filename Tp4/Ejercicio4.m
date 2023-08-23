%% Ejercicio 4
% Para el siguiente filtro recursivo IIR, se desea estimar los 
% coeficientes del mismo mediante técnicas adaptativas 
% (es decir, comparar estos coeficientes con el vector adaptativo de pesos
% obtenido) si la entrada al mismo es Ruido Blanco Gaussiano con 
% las siguientes características: ?=0 y ?=0.5. Diseñe una función MatLab.

fs=1000;
Ts=1/fs;
t=0:Ts:10-Ts; %10 segs
xk=0.5*randn(size(t));

B=[1 0 0];
A=[1 -1.2 0.6];

dk=filter(B,A,xk);
[Bk,Ak,yk,ek]=ARMA_Adaptativo(xk',dk',2,2);

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
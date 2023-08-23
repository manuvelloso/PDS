%% Ejercicio 6
% Para los siguientes sistemas discretos, lineales e invariantes al 
% desplazamiento, caracterizados por sus ecuaciones en diferencias,
% se pide 
% y[n]+0.9y[n-2]=0.3x[n]+0.6x[n-1]+0.3x[n-2]
% y[n]+1.8cos(pi/6)y[n-1]+0.81y[n-2]=x[n]+0.5x[n-1]
% a) Calcule y[n] analíticamente para una entrada x[n]=d[n]. 
% b) Calcule algorítmicamente, los primeros 128 puntos de la respuesta al 
% impulso al sistema, es decir, h[n] utilizando los comandos de MatLab 
% impz o filter. 
% Grafique el resultado junto a la solución analítica del inciso 
% a), de forma tal de verificar la igualdad de ambos procedimientos. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

L=128;
n=0:L-1;

A1=[1 0.9];
B1=[0.3 0.6 0.3];

A2=[1 1.8*cos(pi/16) 0.81];
B2=[1 0.5];

x=zeros(size(n)); %delta kronecker
x(1)=1;

[H1,w1]=impz(B1,A1,L);
[H2,w2]=impz(B2,A2,L);

y1=conv(H1,x);
y2=conv(H2,x);
n2=0:(2*L-2);

subplot(2,2,1)
stem(w1,H1);
xlabel('n');
ylabel('H1[n]');
grid

subplot(2,2,2)
stem(w2,H2)
xlabel('n');
ylabel('H2[n]');
grid

subplot(2,2,3)
stem(n2,y1);
xlabel('n');
ylabel('y[n]');
grid

subplot(2,2,4)
stem(n2,y2);
grid




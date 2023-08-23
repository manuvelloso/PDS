%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 
%%% Ejercicio 12 TP#2. Retardo de Grupo
%%%
%%% Procesamiento Digital de Se�ales
%%%
%%% Dr. Ing. Franco Martin Pessana
%%% 
%%% Facultad de Ingenier�a y Ciencias Exactas y Naturales
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% C�mputo de Retardo de Grupo
%
% Lectura del numero deseado de muestras

function [tau,tauM]=Ejercicio_12(B,A)

N=512;
n=[0:N-1]';
h=impz(B,A,N); %rta al impulso
H=fft(h);
nH=fft(n.*h);
tau=real(nH./H);
H=figure(1);
set(H,'NumberTitle','off','Menubar','none','name','Retardo de Grupo. Ejercicio 12 FICEN UF','position',[100 20 1000 700]);
subplot(211)
w=0:2*pi/N:2*pi-pi/N;
plot(w,tau)
grid
xlabel('w [rad]')
ylabel('tau []')
subplot(212)
[tauM,W] = grpdelay(B,A,N,'whole');
plot(W,tauM)
xlabel('w [rad]')
ylabel('tau []')
grid
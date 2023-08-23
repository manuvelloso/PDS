%% Ejercicio 1
%input: longitud de datos (L) y frecencia de muestreo ft
%output: señal

function Ejercicio1(L,Fs)
Ts=1/Fs;
n=0:Ts:(L-1)*Ts; %tiempo discreto

x1=zeros(size(n)); %delta kronecker
x1(1)=1;

x2=ones(size(n)); %escalon unitario

x3=0:L-1; %rampa unitaria

H=figure;
subplot(3,1,1)
stem(n,x1);
grid
ylabel('d[n]');
xlabel('nTs[s]');

subplot(3,1,2)
stem(n,x2);
grid;
ylabel('u[n]');
xlabel('nTs[s]');

subplot(3,1,3)
stem(n,x3);
grid
ylabel('nu[n]');
xlabel('nTs[s]');
%a Delta de Kronecker d[n]
%n=0:ft:100;
%d=dirac(n);
%idx=d == Inf; %find Inf
%d(idx) = 1;
%stem(n,d);

%b escalor unidatio u[n]
%u=heaviside(n);stem(n,u);

%c rampa unitaria
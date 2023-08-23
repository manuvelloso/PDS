%% Ejercicio 11
% Verifique la correcta implementación del filtro IIR anterior mediante 
% MatLab calculando y graficando su respuesta al impulso, 
% su función de Transferencia y graficando la salida temporal y(t) 
% que se obtiene de haber filtrado la señal de entrada
% x(t)= 2sen(2?*50t)+ sen(2?*300t) con el filtro digital IIR. 

fs=1000;
Ts=1/fs;
t=0:Ts:1000;
a=2*pi*50;
b=2*pi*300;

x=2*sin(a*t)+sin(b*t);
Xz=fft(x);

fs=1000; %Hz
R=10000; %Ohm
C=10*exp(-9); %Faradios
[Nz,Dz]=bilinear(1/(R*C),[1 1/(R*C)], fs);
Y=filter(Nz,Dz,x);
y=ifft(Y);

subplot(2,1,1)
plot(t,x);
grid;
xlabel('t');
ylabel('x(t)');

subplot(2,1,2)
plot(t,y);
grid;
xlabel('t');
ylabel('y(t)');
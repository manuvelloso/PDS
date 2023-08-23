%% Ejercicio 18
% Observe la composición espectral de la señal digitalizada x[n]=x(nTs),
% utilizando el comando MatLab fft, que realiza la 
% Transformada Discreta de Fourier de una señal discreta. 
% Recuerde que la Transformada tiene parte real e imaginaria, por lo que
% deberá calcular el módulo de la misma con el comando abs, 
% para luego realizar el graficado de la misma, con los comandos plot o stem

x=Exponencial(1,0,521,-1);

X=fft(x);
N=length(X);
w=0:2*pi/N:(2*pi-2*pi/N);

Graficar(X,w,'Ejercicio 18');

subplot(2,1,1)
plot(w/pi,abs(X));
grid;
xlabel('\omega/pi');
ylabel('|H(w)|');

subplot(2,1,2)
plot(w/pi,angle(X));
grid;
xlabel('\omega/pi');
ylabel('\theta(H(w))');



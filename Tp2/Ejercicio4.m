%% Ejercicio 4
% Analice la propiedad de Transformada de Fourier de una Secuencia 
% (TFS) que consiste en Sobremuestrear a una se�al.
% Implemente una rutina que permita realizar el sobremuestreo con 
% L=2 de un vector gen�rico. Compruebe el resultado con la se�al 
% a[n] = [2 5 3]. Modifique el programa anterior para que permita un
% sobremuestreo gen�rico L. Investigue la existencia de rutinas 
% predise�adas para tal efecto y verifique su algoritmo con 
% esta rutina de Matlab.

a=[2 5 3];
L=2;
N=length(a);
% y=Sobremuestrador(x,L);
y=upsample(a,L);

subplot(2,1,1)
stem(a);
grid
ylabel('x[n]');
xlabel('n');

% subplot(3,1,2)
% stem(y);
% grid
% ylabel('y[n] (sobremuestrada)'); % -> esto es para interpolador
% xlabel('n');

% Con comando de Matlab:
% y_matlab=interpft(x,M); %esto es para el interpolador

subplot(2,1,2)
stem(y);
grid
ylabel('y[n] (matlab)');
xlabel('n');
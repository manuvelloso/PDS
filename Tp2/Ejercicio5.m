%% Ejercicio 5
% La técnica de Submuestreo, consiste en tomar muestras de una señal 
% con un cierto intervalo M de las mismas, es decir si se tiene una
% secuencia x[n], la secuencia submuestreada con M puntos será
% y[n] = Mx[n]. La señal resultante contará con menos puntos que la
% señal original, y en el espectro de las frecuencias se producirá 
% solapamiento. 
% Implemente una rutina que realice el submuestreo de un vector con M=2. 
% Use la señal a = [1 3 5 7 9 8 6]. 
% Investigue la existencia de rutinas prediseñadas para tal efecto 
% y verifique su algoritmo con esta rutina de Matlab. 

a=[1 3 5 7 9 8 6];
M=2;
%y=Submuestrador(a,M);
y=downsample(a,M);

subplot(2,1,1)
stem(a);
grid
xlabel('n');
ylabel('a[n]');

subplot(2,1,2)
stem(y);
grid
xlabel('n');
ylabel('y[n]');


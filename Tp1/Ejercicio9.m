%% Ejercicio 9
% Implementar un programa que calcule la convolución discreta de dos 
% señales discretas (adquiridas o implementadas) y 
% muestre el resultado en pantalla. Corrobore sus resultados 
% convolucionando respuestas al impulso típicas de filtros pasabajos, 
% e.g filtro RC cuya entrada sea un pulso rectangular y con el 
% comando conv de MatLab. ¿Aprecia alguna dificultad o caso de no 
% cumplimiento usando este comando de MatLab? 

function Ejercicio9(x1,x2)
y=conv(x1,x2);
n1=0:(length(x1)+length(x2)-2);
n2=0:length(x1);
n3=0:length(x2);

subplot(3,1,1)
plot(n2,x1);
grid
ylabel('x1[n]')

subplot(3,1,2)
plot(n3,x2);
grid
ylabel('x2[n]')

subplot(3,1,3)
plot(n1,y)
grid
ylabel('y[n]')
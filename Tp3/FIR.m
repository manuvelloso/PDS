%% Ejercicio 9
% Implemente una rutina MatLab que permita ingresar los coeficientes de 
% un filtro FIR (al cual habrá que ingresarle también el orden del filtro N)
% Se deberá poder verificar la respuesta del filtro diseñado, es decir 
% la visualización de su respuesta en frecuencia 
% (respuesta ante una delta de Dirac a la entrada del filtro FIR)

function FIR(h, N)
[H,w]=freqz(h,1);

subplot(3,1,1)
stem(h);
ylabel('h[n]');
xlabel('n');
grid;

subplot(3,1,2)
plot(w,abs(H)); %rta en frecuencia
ylabel('h[n]');
xlabel('n');
grid;

subplot(3,1,3)
plot(w,angle(H));
xlabel('\omega');
ylabel('|H|');
grid;
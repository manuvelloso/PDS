%% Ejercicio 8

% Implementar en forma digital y visualizar, las siguientes 
% se�ales continuas. Tenga presente que como par�metros de entrada 
% estar� la longitud N de las se�ales a generar, como as� tambi�n todos 
% los par�metros que considere pertinentes (amplitud, retardo, 
% exponente, frecuencia de oscilaci�n, per�odos de oscilaci�n, etc.) 

function x = Pulso(A,t0,N,duration)
n=0:N-1;
x=zeros(1,N);
x(t0:t0+duration)=A; % (el pulso tiene problemas cuando el t0 es 0)
%% Ejercicio 8

% Implementar en forma digital y visualizar, las siguientes 
% señales continuas. Tenga presente que como parámetros de entrada 
% estará la longitud N de las señales a generar, como así también todos 
% los parámetros que considere pertinentes (amplitud, retardo, 
% exponente, frecuencia de oscilación, períodos de oscilación, etc.) 

function x = Pulso(A,t0,N,duration)
n=0:N-1;
x=zeros(1,N);
x(t0:t0+duration)=A; % (el pulso tiene problemas cuando el t0 es 0)
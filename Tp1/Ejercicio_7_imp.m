%% Imp. Ejercicio 7
%en este caso se trata de un filtro IR
A=[1 1.8*cos(pi/16) 0.81]; %siempre el primer coeficiente es 1 (sino me toca dividir)
B=[1 0.5];
L=100;

subplot(1,2,1)
Ejercicio7(B,A,L,3);
subplot(1,2,2)
Ejercicio7(B,A,L,15);

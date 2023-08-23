%% Implement. Ej.4
f0=1e3;
L=100;
A=10;
phi=pi/6; %con fase inciial se cumple el teorema de muestreo
% cuando la fase es 0, lo que muestrea son los cruces por cero y por eso
% queda rari

subplot(2,2,1)
Ejercicio4(f0*10,L,A,f0,phi);
ylabel('a');

subplot(2,2,2)
Ejercicio4(4.5*f0,L,A,f0,phi);
ylabel('b');

subplot(2,2,3)
Ejercicio4(2*f0,L,A,f0,phi);
ylabel('c');

subplot(2,2,4)
Ejercicio4(Fs,L,A,f0,phi);
ylabel('d');
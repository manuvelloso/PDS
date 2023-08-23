%% Ejercicio 24
% Implemente una Rutina para correlacionar señales, ya sea 
% Autocorrelación o Correlación Cruzada utilizando propiedades
% de Transformada Discreta de Fourier.

function y=Correlacion(a,b)
A=fft(a);
B=fft(b);

Y=A*conj(B); % esto es para correlación de señales
y=ifft(Y);
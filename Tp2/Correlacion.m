%% Ejercicio 24
% Implemente una Rutina para correlacionar se�ales, ya sea 
% Autocorrelaci�n o Correlaci�n Cruzada utilizando propiedades
% de Transformada Discreta de Fourier.

function y=Correlacion(a,b)
A=fft(a);
B=fft(b);

Y=A*conj(B); % esto es para correlaci�n de se�ales
y=ifft(Y);
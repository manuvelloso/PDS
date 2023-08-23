%% Ejercicio 9
% Determine y grafique las parte real e imaginaria y el espectro de 
% magnitud y fase la Transformada de Fourier de una secuencia 
% (TFS) para diferentes valores de r y phi del siguiente filtro 
% digital (utilice el comando fvtool para la ubicación de los polos).

function Ejercicio9(r, phi)
N=1024;
B=1;
A=[1 -2*r*cos(phi) r*r];

[X, w]=freqz(B,A,N);

Graficar(X,w,'Ejercicio 9');
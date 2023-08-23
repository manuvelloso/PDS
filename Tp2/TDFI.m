%% Ejercicio 7
% Calcular la Transformada Discreta Inversa de Fourier de una secuencia. 
% Su algoritmo debe recibir Parte Real e Imaginaria de la Transformada 
% Discreta de Fourier y entregar la señal discreta en sus partes Real e 
% Imaginaria. Tenga presente que, si la Transformada Discreta de 
% Fourier provino de una señal real, la parte imaginaria de su 
% antitransformada debe ser indefectiblemente cero para todo n.

function [R I]=TDFI(PR,PI)

% esto no es lo mismo que hacer el ifft?
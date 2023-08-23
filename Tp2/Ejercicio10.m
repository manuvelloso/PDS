%% Ejercicio 10
% Determine y grafique las parte real e imaginaria y el espectro 
% de magnitud y fase las siguientes Transformadas de Fourier

N=1024;
%% a
A_a=[1 0 1.355 0 0.619];
B_a=0.0761*[1 0 -0.763 0 1];

[Ha, wa]=freqz(B_a,A_a,N,'whole');
Graficar(Ha,wa, 'Ejercicio 10a');
pause;
%% b
A_b=[1 1.2828 1.0388 0.3418];
B_b=[0.0518 -0.1553 0.1553 0.0518];

[Hb, wb]=freqz(B_b,A_b,N,'whole');
Graficar(Hb,wb, 'Ejercicio 10b');
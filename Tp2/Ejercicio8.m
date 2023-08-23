%% Ejercicio 8
% Para los siguientes sistemas lineales, discretos, causales e 
% invariantes al desplazamiento, se pide graficar su respuesta en 
% frecuencia y establecer qué tipo de filtro define cada una 
% de sus ecuaciones en diferencias.
N=100;

%% a
A_a=[1 0.13 0.52 0.3];
B_a=[0.16 -0.48 0.48 -0.16];

[Ha, wa]=freqz(B_a, A_a, N,'whole');

%% b
A_b=[1 0 -0.268];
B_b=[0.634 0 -0.634];

[Hb, wb]=freqz(B_b, A_b, N,'whole');
%% c
A_c=[1 0 0.268];
B_c=[0.634 0 0.634];

[Hc, wc]=freqz(B_c, A_c, N,'whole');
%% d
A_d=[1 -0.5 0.1];
B_d=[0.1 -0.5 1];

[Hd, wd]=freqz(B_d, A_d, N,'whole');

%% Gráficos
Graficar(Ha,wa,'Ejercicio 8a'); %pasa altos
pause;
Graficar(Hb,wb,'Ejercicio 8b'); %pasa banda
pause;
Graficar(Hc,wc,'Ejercicio 8c'); %elimina banda
pause;
Graficar(Hd,wd,'Ejercicio 8d'); %pasa todo

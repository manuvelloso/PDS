%% Ejercicio 13
% Teniendo en cuenta el algoritmo de Retardo de Grupo desarrollado en el 
% problema anterior, se pide: 

N=128; % cuando aumento N -> cambia el grafico (el pico se hace mayor y hay menos oscilación)
%% a
% Para la respuesta al impulso h[n] = d[n-4], calcule analíticamente 
% el retardo de Grupo

x = Delta(1, 4, N);
h=impz(x,1,N); %rta al impulso
retardo_a = RetardoGrupo(h);

%% b
% Represente h[n] = ?[n ? 4] mediante un vector columna y calcule 
% su retardo de Grupo.


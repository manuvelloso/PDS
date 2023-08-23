%% Ejercicio 23
% Considerando la secuencia del inciso anterior v[n], filtre la misma
% mediante un filtro Pasa Bajos de Fase cero con un Angulo de Corte ?C
% que debe determinar Ud. en base a lo dictado en la teoría, 
% teniendo en cuenta que deben ser cumplidas las longitudes L de las 
% respuestas al impulso de los filtros. Observe los 3 resultados obtenidos.
% ¿Se ha conseguido la interpolación de la señal original a cada uno de
% los puntos L seleccionados?

Ejercicio22;

%% L=2
L=2;
wc2=2*pi/L;

kc2=wc2*N/(2*pi);
H2=FPB(round(kc2),v2);
y_2=abs(ifft(L*V2.*H2));

%% L=4
L=4;
wc4=2*pi/L;

kc4=wc4*N/(2*pi);
H4=FPB(round(kc4),v4);
y_4=abs(ifft(L*V4.*H4));
%% L=8
L=8;
wc8=2*pi/L;

kc8=wc2*N/(2*pi);
H8=FPB(round(kc8),v8);
y_8=abs(ifft(L*V8.*H8));

%% Ploteo
subplot(4,2,1)
plot(t,x);
grid;
xlabel('t [s]');
ylabel('x(t)');
subplot(4,2,2)
plot(f,abs(X));
grid;
xlabel('f [Hz]');
ylabel('|X(f)|');

subplot(4,2,3)
plot(t2,y_2);
grid;
xlabel('t [s]');
ylabel('y(t) L=2');
subplot(4,2,4)
plot(f2_,abs(Y_2));
grid;
xlabel('t [s]');
ylabel('f[Hz] M=2');

subplot(4,2,5)
plot(t4,y_4);
grid;
xlabel('t [s]');
ylabel('y(t) L=4');
subplot(4,2,6)
plot(f4_,abs(Y_4));
grid;
xlabel('t [s]');
ylabel('f[Hz] M=2');

subplot(4,1,7)
plot(t8,y_8);
grid;
xlabel('t [s]');
ylabel('y(t) L=8');
subplot(4,2,8)
plot(f8_,abs(Y_8));
grid;
xlabel('t [s]');
ylabel('f[Hz] M=2');

%% Ejercicio 21
% Para cada una de las señales v[n] filtradas del inciso anterior,
% nuevamente realice un submuestreo de las mismas al igual que en el 
% inciso 2, es decir y[n] [nMv ] S = , con M =2 M = y 4 M = 8. 
% Para cada una de estas secuencias filtradas y submuestreadas, 
% obtenga su espectro de Fourier y compare estos resultados 
% con los obtenidos en el ejercicio 18). 
% ¿Qué puede concluir al respecto? 

Ejercicio20;

%Para M=2
M=2;
y_2=downsample(v2,M);

Ts2=Ts*M;
t2=Ts2*(0:N/M-1);

Y_2=fft(y_2);
f2=1/Ts2;
f2_=0:f2/(N/M):f2-f2/(N/M); %eje de frecuencias para la sub

%Para M=4
M=4;
y_4=downsample(v4,M);

Ts4=Ts*M;
t4=Ts4*(0:N/M-1);

Y_4=fft(y_4);
f4=1/Ts4;
f4_=0:f4/(N/M):f4-f4/(N/M); %eje de frecuencias para la sub

%Para M=8
M=8;
y_8=downsample(v8,M);

Ts8=Ts*M;
t8=Ts8*(0:N/M-1);

Y_8=fft(y_8);
f8=1/Ts8;
f8_=0:f8/(N/M):f8-f8/(N/M); %eje de frecuencias para la sub


%ploteoo

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
plot(t2,y_2)
grid;
xlabel('n');
ylabel('y (M=2)');
subplot(4,2,4)
plot(f2_,abs(Y_2));
grid;
xlabel('t [s]');
ylabel('f[Hz] M=2');

subplot(4,2,5)
plot(t4,y_4)
grid;
xlabel('n');
ylabel('y[n](M=4)');
subplot(4,2,6)
plot(f4_,abs(Y_4));
grid;
xlabel('t [s]');
ylabel('f[Hz] M=4');

subplot(4,2,7)
plot(t8,y_8)
grid;
xlabel('n');
ylabel('y[n](M=8)');
subplot(4,2,8)
plot(f8_,abs(Y_8));
grid;
xlabel('t [s]');
ylabel('f[Hz] M=8');
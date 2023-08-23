%% Ejercicio 14
% Calcule y grafique las Transformadas Discretas de Fourier de las 
% señales seleccionadas en ejercicio 8) del Trabajo Práctico N°1. 
% Visualice los resultados en Módulo y Fase o Parte Real e Imaginaria. 
% Use para ello, lo desarrollado en el ejercicio 6).

P=3;

%% Amortiguada
A = 10;
N = 100;
p0 = 10;
a = 5;
x1 = Amortiguada(A,P,N,a);
X1 = fft(x1);

w=0:2*pi/N:(2*pi-2*pi/N);
Graficar(X1,w, 'Amortiguada');
pause;  % Wait for user to type any key

%% Amplitud modulada
N = 100;
Ac = 5;
Am = 10;
fc = 10;
fm = 3;
x2 = AmpModulada(Am, Ac, fm, fc, N);
X2 = fft(x2);

w=0:2*pi/N:(2*pi-2*pi/N);
Graficar(X2,w, 'Amplitud Modulada');
pause;  % Wait for user to type any key

%% Delta
N = 100;
A = 5;
t0 = 50;
x3 = Delta(A, t0, N);
X3 = fft(x3);

w=0:2*pi/N:(2*pi-2*pi/N);
Graficar(X3,w, 'Delta');
pause;  % Wait for user to type any key
%% Exponencial
N = 50;
A = 2;
a = -1;
t0 = 0;
x4 = Exponencial(A, t0, N, a);
X4 = fft(x4);

w=0:2*pi/N:(2*pi-2*pi/N);
Graficar(X4,w, 'Exponencial');
pause;  % Wait for user to type any key

%% Frecuencia modulada
x5 = FrecModulada(Ac,Am, fc,fm, N);
X5 = fft(x5);

w=0:2*pi/N:(2*pi-2*pi/N);
Graficar(X5,w, 'Frecuencia Modulada');
pause;  % Wait for user to type any key

%% Pulso
N = 100;
A = 5;
t0 = 50;
d = 10;
x6 = Pulso(A,t0,N,d); 
X6 = fft(x6);

w=0:2*pi/N:(2*pi-2*pi/N);
Graficar(X6,w, 'Pulso');
pause;  % Wait for user to type any key

%% Sinc
N = 100;
f0 = 5000;
t0 = 50;
x7 = Sinc(A, P, t0, N);
X7 = fft(x7);

w=0:2*pi/N:(2*pi-2*pi/N);
Graficar(X7,w, 'Sinc');
pause;  % Wait for user to type any key


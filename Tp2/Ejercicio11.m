%% Ejericio 11
% Filtro Notch

k=1024; % pts para graficar el espectro
f0=50; % frecuencia de linea 
fs=1000; %frecuencia de muestreo
Omega=2*pi*f0/fs; %ángulo de la discreta

r=0.9; %magnitud de los cero ???

num = conv([1 -exp(-1j*Omega)],[1 -exp(1j*Omega)]);
den = conv([1 -r*exp(-1i*Omega)],[1 -r*exp(1i*Omega)]);

[H,w] = freqz(num, den, k);

H1=figure(1);
set(H1,'NumberTitle','off','Menubar','none','name','Filtro Notch. Ejercicio#11. FICEN UF');

% Graficado de la Respuesta en Frecuencia
subplot(2,2,1)
plot(w,real(H));grid
title('parte real')
xlabel('omega [rad]'); ylabel('Amplitud')

subplot(2,2,2)
plot(w,imag(H));grid
title('Parte imaginaria')
xlabel('omega [rad]'); ylabel('Amplitud')

subplot(2,2,3)
plot(w,abs(H));grid
title('Espectro de Magnitud')
xlabel('omega [rad]'); ylabel('Magnitud')

subplot(2,2,4)
plot(w,angle(H));grid
title('espectro de Fase')
xlabel('omega [rad]'); ylabel('Fase, radianes')

N=150;
Ts=1/fs;
t=0:Ts:(N-1)*Ts;
x=5*sin(2*pi*f0*t);
y=filter(num,den,x);

H2=figure(2);
set(H2,'NumberTitle','off','Menubar','none','name',...
    'Entrada y Salida del Filtro Notch. Ejercicio#11. FICEN UF',...
    'position',[100 20 1000 700]);
subplot(211)
plot(t,x)
grid
xlabel('t [s]'); ylabel('x(t)')

subplot(212)
plot(t,y)
xlabel('t [s]'); ylabel('y(t)')
grid
hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Cálculo te tiempo de establecimiento del Filtro Notch
Max=max(y);
Umb=(abs(y)<0.01*Max)*Max;
for n=N:-1:1
    if Umb(n)==0
        IndTe = n;
        break
    end   
end
Test=t(IndTe);    % Tiempo de Establecimiento
plot(t,Umb,'g');
disp('Tiempo de establecimiento (s) =')
Test
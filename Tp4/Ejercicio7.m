%% Ejercicio 7
% La iglesia St Andrew en Lyddington, Reino Unido data del siglo XIV y posee una 
% acústica particular debido a la presencia de huecos o cuencos en las paredes.
% A partir de la secuencia de ruido emitido noise.mat 
% y de su respectiva grabación recNoise.mat identifique el sistema que
% modela la respuesta acústica de la iglesia. La frecuencia de muestreo de
% estos datos es 48kHz. 
% Grafique la respuesta en frecuencia del mismo. ¿Qué observa? 
% Para evaluar el efecto acústico filtre un sonido anecoico y compare la salida con la 
% entrada (puede utilizar la grabación singing.mat). 
% Nota: La respuesta al impulso cae aproximadamente 80dB en 1,2 segundos. 
% Utilice este dato para estimar el orden del modelo. 

load 'noise.mat';
load 'recNoise.mat';

xk=noise;     % Ruido emitido en la Iglesia
dk=recNoise;  % Ruido de ac stica recibido
N=length(xk); % Longitud de las se ales
Fs=48e3;      % Frecuencia de muestreo de datos
Ts=1/Fs;	  % Per odo de muestreo
t=0:Ts:(N-1)*Ts;	% Vector de tiempos   

[B,A,yk,ek]=ARMA_Adaptativo(xk,dk,P,0); %% Llamada a IIR Adaptativo como FIR Q=0

H=figure(1);
set(H,'NumberTitle','off','Menubar','none','name','IIR Identificador Adaptativo Ejercicio 7',...
    'position',[20 30 1000 700]);

subplot(3,1,1)
plot(t,dk,'b',t,xk,'r');
ylabel('xk red; dk blue');
title('Se al de ruido en Iglesia y su ac stica devuelta')

subplot(3,1,2)
plot(t,yk);
ylabel('yk (salida Filtro)');
title('Salida del Filtro IIR Adaptativo en modalidad Identificador')

subplot(3,1,3)
plot(t,ek);
ylabel('ek (Se al de error)');
xlabel('t [s]')
title('Evoluci n del error en la identificaci n')

H2=figure(2);
set(H2,'NumberTitle','off','Menubar','none','name','IIR Identificador Adaptativo Bode',...
    'position',[60 70 1000 700]);

Hz=tf(B',A',Ts);
Hs=d2c(Hz,'tustin');
H_sb=bodeplot(Hs);
setoptions(H_sb,'FreqUnits','Hz','PhaseVisible','off');
grid

load 'singing.mat'
disp('Voz de la cantante fuera de la Iglesia:')
sound(singing,Fs);
y_filt=filter(B,A,singing);
disp('Presione ENTER para continuar...')
pause
disp('Voz de la cantante dentro de la Iglesia')
sound(y_filt,Fs);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 
%%% Ejercicio 6 TP#2
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Graficar(H,w, Title)

H1=figure(1);
    set(H1,'position',[50 100 900 550],'Menubar','none',...
        'NumberTitle','off','name',Title);
    
% Graficado de la Respuesta en Frecuencia
subplot(2,2,1)
plot(w/(pi),real(H));
grid
title('parte real')
xlabel('\omega/\pi'); ylabel('Amplitud')

subplot(2,2,2)
plot(w/(pi),imag(H));
grid
title('Parte imaginaria')
xlabel('\omega/\pi'); ylabel('Amplitud')

subplot(2,2,3)
plot(w/(pi),abs(H));
grid
title('Espectro de Magnitud')
xlabel('\omega/\pi'); ylabel('Magnitud')

subplot(2,2,4)
plot(w/(pi),angle(H));
grid
title('espectro de Fase')
xlabel('\omega/\pi'); ylabel('Fase, radianes')
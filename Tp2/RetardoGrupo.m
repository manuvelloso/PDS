%% Ejercicio 12
%% b
% Usando la función fft junto con operaciones algebraicas, desarrolle un 
% algoritmo que calcule el Retardo de Grupo de la respuesta al impulso 
% de un sistema [nh ] de N puntos en el intervalo 0 ? ? ? 2?

function tau = RetardoGrupo(h) %recibe la rta al impulso
N = length(h);
n = [0:N-1]';  % eje temporal
H = fft(h); % H[k]
nh = n.*h;  % aplico propiedad de tabla
nH=fft(nh); % transformo para obtener el resultado de la derevada nefasta

tau = real(nH./H);

%subplot(2,1,1)
w=0:2*pi/N:((2*pi)-2*pi/N);
plot(w, tau); %grafico el retardo de grupo
grid;
xlabel('w'); ylabel('tau');
%subplot(2,1,2)
% [tauM,W] = grpdelay(B,A,N,'whole'); %rutina de matlab para verificar
% plot(W,tauM)
% xlabel('w [rad]')
% ylabel('tau []')
% grid

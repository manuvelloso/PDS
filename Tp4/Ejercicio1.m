%% Ejercicio 1
% Dado el siguiente combinador lineal adaptativo, donde la entrada es x[k]
% salida deseada es d[k] se pide encontrar los pesos de este FIR adaptativo 
% para conseguir dicha salida. Calcule además la superficie de error cuadrático medio y 
% encuentre su mínimo valor. Observe que con tan sólo un retardo y dos pesos, puede 
% conseguirse un cambio de fase y amplitud de la señal de entrada x[k] a la deseada d[k].

P=1; %Orden del filtro
N=5; %no afecta el cálculo
n=1000;
k=(0:n)';

xk=sin(2*pi*k/N); %Señal de entrada
dk=2*cos(2*pi*k/N); %Señal de salida

[Bk,Ak,yk,ek]=ARMA_Adaptativo(xk,dk,P,0);
BKT=[2*cos(2*pi/N)/sin(2*pi/N) -2/sin(2*pi/N)]';

H1=figure(1);
set(H1,'position',[20 30 1000 700],'Menubar','none',...
        'NumberTitle','off','name','Ejercicio 1. Filtro FIR Adaptativo');
subplot(3,1,1)
plot(k,xk);
ylabel('xk');
grid; 

subplot(3,1,2)
plot(k,yk);
ylabel('yk');
grid; 

subplot(3,1,3)
plot(k,ek);
ylabel('ek');
xlabel('k')
grid;

H2=figure(2);
set(H2,'position',[60 30 1000 700],'Menubar','none',...
        'NumberTitle','off','name','Superficie de Minimización');
w0=-10:0.2:10;
Nx=size(w0,2);
B0=ones(Nx,1)*w0;   % Matriz con variaciones de wo
B1=B0';				% Matriz con variaciones de w1
Ek=2+0.5*(B0.^2+B1.^2)+B0.*B1*cos(2*pi/N)+2*B1*sin(2*pi/N);
mesh(B0,B1,Ek)
xlabel('b0')
ylabel('b1')
zlabel('E[ek*ek]')
rotate3d;

H3=figure(3);
set(H3,'position',[100 30 1000 700],'Menubar','none',...
        'NumberTitle','off','name','Curvas de Nivel del Error');
contour(B0,B1,Ek,30)
xlabel('b0')
ylabel('b1')
grid;

% Cuando + cerca estoy de las velocidades, menos tardo
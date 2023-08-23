%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Rutina que permite el calculo de filtros adaptativos IIR (o FIR)
%%% mediante la sucesion de 2 filtros FIR. Utiliza el metodo del
%%% descenso mas escalonado junto con LMS
%%% 
%%%  Sintaxis:
%%%
%%%    [B,A,yk,ek]=Arma_Adaptativo(x,d,P,Q)
%%%          
%%%  Donde:
%%%
%%% Par�metros de Salida:
%%%          B:  Coeficientes del numerador del Filtro Adaptativo IIR
%%%          A:  Coeficientes del denominador del Filtro Adaptativo IIR
%%%          yk: salida del filtro adaptativo IIR
%%%          ek: Se�al de error en el proceso de adapatacion
%%%
%%% Par�metros de entrada:
%%%          x: Se�al a la entrada del filtro digital adaptativo (Columna)
%%%          d: Se�al deseada del proceso de adapatacion (Columna)
%%%          P: Orden del Numerador (Cantidad de ceros)
%%%          Q: Orden del Denominador (Cantidad de Polos)
%%%
%%% Dr. Ing. Franco Martin Pessana
%%% Facultad de Ingenier�a y Ciencias Exactas y Naturales
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [B,A,yk,ek]=ARMA_Adaptativo(x,d,P,Q)

N=length(x);

%% Sistema Digital de ARMA(P,Q) o AR(P)
Pot_x=mean(x.*x);
Pot_d=mean(d.*d);
%con 20 funca siempre
mu1=1/(20*(P+1)*Pot_x);	% vel. de Convergencia del Algoritmo para ceros
mu2=1/(20*(Q+1)*Pot_d);	% vel. de Convergencia del Algoritmo para polos

%% Recordar: Cuanto m�s peque�a la se�al a adaptar, mas grande debe ser mu
yk=zeros(size(x));  % Se�al de salida inicial del Filtro IIR
ek=zeros(size(x));	% Se�al inicial de error

M=max([P Q]); %tomo m�x entre cantidad de polos y ceros
if Q==0 % Se est� trabajando con un FIR Adaptativo
    Bk=zeros(P+1,1);	% Vector Inicial de Pesos del FIR de los ceros (con P+1 coeficientes)
    for i=P+1:N
        x_i=x(i:-1:i-P);  % Vector de entrada x i-�simo
        yk(i)=Bk'*x_i;	        % se�al a la salida del FIR
        ek(i)=d(i)-yk(i);		    % Se�al de error
        Bk=Bk+2*mu1*ek(i)*x_i;	    % Vector de pesos i-�simo de los ceros
    end
    B=Bk;
    A=1; %por ser un FIR
else % Se est� trabajando con un IIR Adaptativo
    Bk=zeros(P+1,1);	% Vector Inicial de Psos del FIR de los ceros
    Ak=zeros(Q,1);	% Vector Inicial de Pesos del FIR de los polos
    for i=M+1:N-1
        x_i=x(i:-1:i-P);  % Vector x i-�simo
        d_i=d(i-1:-1:i-Q);
        yk(i)=Bk'*x_i+Ak'*d_i;	% se�al a la salida del IIR
        ek(i)=d(i)-yk(i);		    % Se�al de error
        Bk=Bk+2*mu1*ek(i)*x_i;	% Vector de pesos i-�simo de los ceros
        Ak=Ak+2*mu2*ek(i)*d_i;	% Vector de pesos i-�simo de los polos
    end
    B=Bk;
    A=[1;-Ak]; 
end
%% Ejercicio 2
%Dados los Polos y Ceros del Sistema. Dada la representación en 
%la Transformada Z del siguiente filtro Digital, se pide:

%% a
%Escriba una función zp2tf para convertir esta descripción mediante 
%polos y ceros del filtro a función transferencia en H(z). 

z=[-1 -1i 1i];
k=1/77;
p=[0.9 0.6718-1i*0.6718 0.6718+1i*0.6718];
N=100;
n=0:N-1;

[B,A]=zp2tf(z',p,k);
%% b
%Calcule la secuencia de salida y[n] para cada una de las siguientes 
%secuencias de entrada de longitud 100:

x1=ones(1,length(n));
x2=cos(pi*n);
x3=cos(pi*n/2);

y1=filter(B,A,x1);
y2=filter(B,A,x2);
y3=filter(B,A,x3);

Ha=figure(1);
subplot(3,1,1)
stem(y1);
grid;

subplot(3,1,2)
stem(y2);
grid;

subplot(3,1,3)
stem(y3);
grid;


%% c
%Encuentre la secuencia de entrada v[n] de Período Fundamental de 
%repetición de 4 puntos, tal que la correspondiente salida del sistema 
%sea proporcional a (0.9)^n para n>=3. 
y4=zeros(size(n));
y4(4:N)=0.9.^(n(4:N)-3); %a partir de n=4 la salida es 0.9^n
x4=filter(A,B,y4);

Hc=figure(2);

subplot(2,1,1)
stem(y4);
grid;

subplot(2,1,2)
stem(x4);
grid

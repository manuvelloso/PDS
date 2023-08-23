%% Ejercicio 3

A=[0.3639 0 0; 1.3639 0.5111 -0.8580; 0 0.8580 0];
B=[1 1 0]';
C=[1.3629 0.6019 0.3074];
D=1;

N=50;
n=0:N-1;

[num, den]=ss2tf(A,B,C,D);
H=tf(num,den,-1); %indico que es un sistema discreto
h=impz(num,den,N); %antitransformo


%% a
v=eig(A)
roots(den)

%% b
x=zeros(size(n));
x(1)=1; %genero la delta

Ha=figure(1)
subplot(2,1,1)
stem(x);
xlabel('n');
ylabel('x[n]');
grid;

subplot(2,1,2)
stem(h);
xlabel('n');
ylabel('x[n]');
grid;

%% c
y=filter(num,den,x);

Hb=figure(2);
subplot(2,1,1)
stem(x);
xlabel('n');
ylabel('x[n]');
grid;

subplot(2,1,2)
stem(h);
xlabel('n');
ylabel('x[n]');
grid;


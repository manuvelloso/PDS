%% Ejercicio 3
% generar señal senoidal discreta
% graficar usando stem

%0<w0<pi 0<phi<2pi
function Ejercicio3(Ni,Nf,A,w0,phi)
n=Ni:Nf;
x=A*sin(w0*n+phi);
stem(n,x);
ylabel('x[n]');
xlabel('n []');
grid

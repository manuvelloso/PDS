%% Ejercicio 2
% Verifique la propiedad de desplazamiento circular anterior, por 
% definici�n y mediante el uso de la Transformada Discreta de Fourier 
% (comando fft en MatLab), siendo la se�al de entrada 
% a = [1 3 5 7 5 3 1], con un desplazamiento circular 4

x=[1 3 5 7 5 3 1]; %se�al de entrada
no=-4;
N=length(x);

n=0:N-1;

% Por definici�n:
x_shift=circshift(x',[no 0]);

% Por fft
x_shift_fft=Despl_Circ(x,no);

subplot(3,1,1)
stem(n,x);
grid
ylabel('x[n]');
xlabel('n');

subplot(3,1,2)
stem(n,x_shift);
grid
ylabel('x[n-no] (con funci�n de matlab funciona mal)'); %grafica mal
xlabel('n');

subplot(3,1,3)
stem(n,x_shift_fft);
grid
ylabel('x[n-no] (con funci�n matlab)');
xlabel('n');

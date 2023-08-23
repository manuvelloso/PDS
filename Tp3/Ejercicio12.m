%% Ejercicio 12
% Teniendo en cuenta la siguiente Función de Transferencia de un Filtro Notch Analógico
% se pide una implementación digital IIR del mismo en la cual la frecuencia a eliminar sea 
% de f0=50 Hz siendo la frecuencia de muestreo de fs=1 KHz. Elija el Q del Filtro Notch 
% analógico de tal manera de conseguir la máxima atenuación a la frecuencia de 
% eliminación (puede utilizar el comando tf de Matlab de la función de transferencia del 
% filtro analógico para elegir el mejor factor de selectividad). Verifique además el 
% resultado del IIR Notch diseñado graficando la respuesta al impulso del Filtro Digital 
% como así también su respuesta en Frecuencia. ¿Que pasa si la frecuencia de muestreo 
% fuera 200 Hz? 

f0=50; %Frecuencia de eliminación [Hz]
fs=1000; %Frecuencia de muestreo [Hz]
w0=f0*2*pi; %Frecuencia angular de eliminación
Q0=1; %Factor de selectividad

N=[1 0 w0^2]; %Numerador del filtro Notch
D=[1 w0/Q0 w0^2]; %Denominador del filtro Notch

H=tf(N,D); %Filtro Notch Analógico

bode(H); %Grafico de filtro
grid;

[Nz,Dz]=bilinear(N,D,fs); %transformada bilinear
[Hd,W]=freqz(Nz,Dz); %calculo transformada en Z

f=fs*W/(2*pi); % eje frecuencial
plot(f, abs(Hd));
grid;
xlabel('Hz');
%% DSP NO ENTENDÍ LO QUE HIZO :(


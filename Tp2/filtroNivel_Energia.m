
function newX = filtroNivelPotencia (x,nivel)

%Obtengo la transformada de Fourier de la senal de entrada
X = fft(x);

%Calculo la energia total de la senal a partir del 
%Teorema de Parseval
Ex = sum(abs(X).^2);

%Ordeno los la magnitud del espectro de mayor a menor: primero los
%componentes de frecuencia de mayor peso y hacia el final los de menor
%peso
[A,ind] = sort(abs(X),'descend');

%Recorro los componentes y voy calculando la potencia incorporando un 
%nuevo componente en cada iteracion. Termina cuando se supera el nivel
%deseado
potParc = 0;
for i=1:length(A)
    potParc = sum(A(1:i).^2);
    if(potParc > nivel*Ex)
        break
    end
end

magX=abs(X);
%Anulo las componentes de módulo que aportan menor energia
magX(ind(i:end)) = 0; 
faseX=angle(X);

Xnew = magX.*exp(1i*faseX);

newX = ifft(Xnew,length(x)); 
newX = real(newX);
end
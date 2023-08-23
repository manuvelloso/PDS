function y = Submuestrador(x,M)
X=fft(x);
xm=downsample(x,M);
Xm=fft(xm);

[H N] =FPB(pi/M,xm);

Y=H.*Xm; %Acá tengo problemas de dimensión
y=real(ifft(Y));
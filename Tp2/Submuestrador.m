function y = Submuestrador(x,M)
X=fft(x);
xm=downsample(x,M);
Xm=fft(xm);

[H N] =FPB(pi/M,xm);

Y=H.*Xm; %Ac� tengo problemas de dimensi�n
y=real(ifft(Y));
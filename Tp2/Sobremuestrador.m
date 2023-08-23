

function y=Sobremuestrador(x,L)
Omega=pi/L;

xl=upsample(x,L); %pone L-1 ceros entre muestra y muestra
[H N]=FPB(Omega,xl); %filtro pasa bajos
XL=fft(xl);


Y=XL.*H;
y=real(ifft(Y));

function x = AmpModulada(Am,Ac,fm,fc,N)
n=0:N-1;
x=Ac*(1+(Am/Ac).*sin(2*pi*fm*n/N).*cos(2*pi*fc*n/N));

%fc: cantidad de periodos
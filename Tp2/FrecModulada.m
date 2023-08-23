function x = FrecModulada(Ac,Am,fc,fm,N)
n=0:N-1;
Pc=1/fc; %periodo de la portadora
Pm=1/fm; %periodo de la modulada

x=Ac*cos(2*pi*Pc*n./N)+Am*sin(2*pi*Pm*n./N);

%% Función despazamiento circular
function x_shift = Despl_Circ(x,no)
N = length(x);
X=fft(x); %transformada de fourier
Wn=exp(-1j*2*pi/N);

k=0:N-1;
WN=Wn.^(k*no);

X_shift = X.*WN;
x_shift=real(ifft(X_shift));

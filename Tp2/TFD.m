function X=TFD(x)
N=length(x);

n=0:N-1;
k=0:N-1;

X=x.*exp(-1j*2*pi*n.*k/N);
X_matlab = fft(x); %returns the discrete Fourier transform (DFT)

subplot(2,1,1)
stem(X,k)
grid
ylabel('X');

subplot(2,1,2)
stem(X_matlab)
ylabel('fft');


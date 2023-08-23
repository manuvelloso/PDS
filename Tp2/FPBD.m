%% Filtro Pasa Banda de Fase Cero

function H = FPBD(x,k1,k2)
N=length(x);
H=zeros(size(x));
H(k1:k2)=1;
H(N-k2:N-k1)=1;
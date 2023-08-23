%% Filtro Elimina Banda de Fase Cero

function H = FEBD(x,k1,k2)
N=length(x);
H=ones(size(x));
H(k1:k2)=0;
H(N-k2:N-k1)=0;
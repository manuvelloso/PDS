%% Filtro Pasa Altos de Fase Cero

function H = FPA(x,kc)
N=length(x);
H=zeros(size(x));
H(kc:N-kc)=1;
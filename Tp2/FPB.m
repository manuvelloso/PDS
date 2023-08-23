function [H,N] =FPB(kc,x)
N=length(x);
H=ones(size(x));
H(kc:N-kc)=0;
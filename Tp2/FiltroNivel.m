%% Ejercicio 16 - Filtrado por Nivel
% Es un tipo de filtro especial que no tiene una determinada respuesta 
% en frecuencia H(?) sino que deja pasar o no componentes de frecuencia 
% de la señal si están por encima de un determinado nivel L. 
% Las componentes de frecuencia de la señal (entiéndase espectro 
% de amplitud de la señal) que no superen este nivel de umbral serán 
% llevadas a cero. El espectro resultante se antitransforma y se 
% obtiene la señal filtrada. También puede pensarse el nivel L como un 
% cierto porcentaje del contenido de energía de la señal a filtrar, 
% en cuyo caso, este nivel discriminaría energía de la señal y no solo 
% su amplitud. Implemente un filtro por nivel que permita realizar alguna 
% de estas dos opciones en la señal a ser filtrada.

function y = FiltroNivel(x,L)
N=length(x);
y

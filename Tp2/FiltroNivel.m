%% Ejercicio 16 - Filtrado por Nivel
% Es un tipo de filtro especial que no tiene una determinada respuesta 
% en frecuencia H(?) sino que deja pasar o no componentes de frecuencia 
% de la se�al si est�n por encima de un determinado nivel L. 
% Las componentes de frecuencia de la se�al (enti�ndase espectro 
% de amplitud de la se�al) que no superen este nivel de umbral ser�n 
% llevadas a cero. El espectro resultante se antitransforma y se 
% obtiene la se�al filtrada. Tambi�n puede pensarse el nivel L como un 
% cierto porcentaje del contenido de energ�a de la se�al a filtrar, 
% en cuyo caso, este nivel discriminar�a energ�a de la se�al y no solo 
% su amplitud. Implemente un filtro por nivel que permita realizar alguna 
% de estas dos opciones en la se�al a ser filtrada.

function y = FiltroNivel(x,L)
N=length(x);
y

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         %
% AGuardado de Se�ales Procesadas                                         %
%                                                                         %
% function x = Guardar(x)                                                 %
% N = Longitud de la se�al discreta                                       %
%                                                                         %
%                                                                         %
% Dr. Ing. Franco Martin Pessana                                          %
%                                                                         % 
% Facultad de Ingenier�a y Ciencias Exactas y Naturales                   %
% Universidad Favaloro                                                    %
%                                                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



function Guardar(y)

[Signal,Ubic]=uiputfile('*.txt','Guardar Se�al Resultante');
Signal=[Signal '.txt'];
archivo=[Ubic Signal];
Punt=fopen(archivo,'w');
fprintf(Punt,'%4.2f\n',y);
fclose(Punt);
return



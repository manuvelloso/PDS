%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         %
% Apertura de se�ales adquiridas                                          %
%                                                                         %
% function x = Abrir()                                                    %
% N = Longitud de la se�al discreta                                       %
%                                                                         %
%                                                                         %
% Dr. Ing. Franco Martin Pessana                                          %
%                                                                         % 
% Facultad de Ingenier�a y Ciencias Exactas y Naturales                   %
% Universidad Favaloro                                                    %
%                                                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function x = Abrir()

[Signal,Ubic]=uigetfile('*.txt','Abrir se�al discreta');
archivo=[Ubic Signal];
Punt=fopen(archivo,'r');
x = fscanf(Punt,'%f\n');
fclose(Punt);
x = x';
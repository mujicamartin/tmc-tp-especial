% ------------------------------------------------------------------------------
%                      Taller de Matematica Computacional - TUDAI
%                           Trabajo Practico Especial - 2017
%                     Estimacion de probabilidades por Montecarlo
%                                 Laboratorio
%                          Martin Mujica : DNI 26775741
% ------------------------------------------------------------------------------

function [probabilidad, todas_las_probabilidades] = calcular_probabilidad(nro_doc, epsilon);

  % Inicializo el arreglo vacio
  todas_las_probabilidades = [];

  %--------------------------------------
  
  % Inicializo las variables que necesito
  probabilidad_anterior = 0; 
  probabilidad_actual = 1;  
  casos_favorables = 0;
  total_de_casos = 0;
  todas_las_probabilidades = [];
  
  % Mientras el algoritmo no converge
  while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_casos)

  % La probabilidad anterior es la probabilidad actual
    probabilidad_anterior = probabilidad_actual;
  
    
    % Actualizo la cantidad de casos
    total_de_casos = total_de_casos + 1;

     if no_tengo_permiso_dos_veces(nro_doc)==1
        casos_favorables = casos_favorables + 1;
      end
        
    % Calculo la probabilidad actual
    probabilidad_actual = casos_favorables / total_de_casos;
    
    % Cargo los datos al arreglo
    todas_las_probabilidades = cat(1, todas_las_probabilidades, probabilidad_actual);
          
  end
 
  % Devuelvo la probabilidad actual
  probabilidad = probabilidad_actual;

end


% ------------------------------------------------------------------------------
%                      Taller de Matematica Computacional - TUDAI
%                           Trabajo Practico Especial - 2017
%                     Estimacion de probabilidades por Montecarlo
%                                 Laboratorio
%                          Martin Mujica : DNI 26775741
% ------------------------------------------------------------------------------

function convergio = converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_casos)

  % exijo al menos 40 casos
  if total_de_casos > 40
    % si la diferencia entre la probabilidad anterior y la actual es menor a epsilon...
    if (abs(probabilidad_anterior - probabilidad_actual) < epsilon) 
      % Convergio!
      convergio = true;
    else
      % No convergio :(
      convergio = false;
    end
  else
    % No convergio :(
    convergio = false;
  end

end
% ------------------------------------------------------------------------------
%                      Taller de Matematica Computacional - TUDAI
%                           Trabajo Practico Especial - 2017
%                     Estimacion de probabilidades por Montecarlo
%                                 Laboratorio
%                          Martin Mujica : DNI 26775741
% ------------------------------------------------------------------------------


% Cargo mi documento
nro_doc = 26775741;

disp('------------------------------');
%---------------------------------
tic;
% Asigno valor a Epsilon
epsilon = 0.1;

% Calculo la probabilidad y cargo el arreglo
[probabilidad, todas_las_probabilidades] = calcular_probabilidad(nro_doc, epsilon);

% Muestro los resultados
fprintf('Para Epsilon = %f: \n', epsilon);
fprintf('Probabilidad de dos veces no autorizado = %f: \n', probabilidad);
fprintf('Desvio Estandar en las Primeras 20 iteraciones = %f: \n', std(todas_las_probabilidades(1:20)));
fprintf('Desvio Estandar en las Ultimas 20 iteraciones = %f: \n', std(todas_las_probabilidades(end-19:end)));
fprintf('Tiempo del Calculo = %f: \n', toc);
disp('------------------------------');

% Grafio
figure, plot(todas_las_probabilidades);
hold on
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad ');
grid on;

%---------------------------------

%---------------------------------
tic;
% Asigno valor a Epsilon
epsilon = 0.01;

% Calculo la probabilidad y cargo el arreglo
[probabilidad, todas_las_probabilidades] = calcular_probabilidad(nro_doc, epsilon);

% Muestro los resultados
fprintf('Para Epsilon = %f: \n', epsilon);
fprintf('Probabilidad de dos veces no autorizado = %f: \n', probabilidad);
fprintf('Desvio Estandar en las Primeras 20 iteraciones = %f: \n', std(todas_las_probabilidades(1:20)));
fprintf('Desvio Estandar en las Ultimas 20 iteraciones = %f: \n', std(todas_las_probabilidades(end-19:end)));
fprintf('Tiempo del Calculo = %f: \n', toc);
disp('------------------------------');

% Grafio
figure, plot(todas_las_probabilidades);
hold on
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad ');
grid on;

%---------------------------------

%---------------------------------
tic;
% Asigno valor a Epsilon
epsilon = 0.001;

% Calculo la probabilidad y cargo el arreglo
[probabilidad, todas_las_probabilidades] = calcular_probabilidad(nro_doc, epsilon);

% Muestro los resultados
fprintf('Para Epsilon = %f: \n', epsilon);
fprintf('Probabilidad de dos veces no autorizado = %f: \n', probabilidad);
fprintf('Desvio Estandar en las Primeras 20 iteraciones = %f: \n', std(todas_las_probabilidades(1:20)));
fprintf('Desvio Estandar en las Ultimas 20 iteraciones = %f: \n', std(todas_las_probabilidades(end-19:end)));
fprintf('Tiempo del Calculo = %f: \n', toc);
disp('------------------------------');

% Grafio
figure, plot(todas_las_probabilidades);
hold on
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad ');
grid on;

%---------------------------------
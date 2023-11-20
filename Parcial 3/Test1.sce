// Datos de entrada
x = [1, 2, 3, 4];
y = [2, 3, 1, 4];

// Grado del polinomio de Lagrange
n = 3;

// Tamaño del conjunto de datos
m = length(x);

// Validación del grado
if n < 1 | n > m then
    disp('El grado debe estar entre 1 y el número de puntos disponibles.')
    quit
end

// Crear el polinomio de Lagrange
P = poly(0, 'x');
for i = 1:n
    L = 1;
    for j = 1:m
        if i ~= j
            L = L * (poly(0, 'x') - x(j)) / (x(i) - x(j));
        end
    end
    P = P + y(i) * L;
end

// Mostrar el polinomio
disp(P)

// Graficar el polinomio y los puntos originales
clf
x_range = min(x):0.01:max(x);
y_range = horner(P, x_range);
plot(x_range, y_range, style = 2, color = 2)
plot(x, y, style = 6, color = 1)
title('Polinomio de Lagrange y Puntos Originales')
xtitle('x', 'Eje X')
ytitle('y', 'Eje Y')

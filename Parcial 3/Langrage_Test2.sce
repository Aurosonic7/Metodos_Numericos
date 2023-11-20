// Limpio
clc;
clear();
// Funcion de langrage
function resultado = Sol_Lagrange(d_x, d_y, n)
    x = poly(0,'x');  // Definir x como una variable simbólica
    resultado = 0;  // Inicializar L como 0 
    for i = 1:n
        p = 1;  
        for j = 1:n
            if i ~= j
                p = p * (x - d_x(j)) / (d_x(i) - d_x(j));
            end
        end
        resultado = resultado + d_y(i)*p;
    end
endfunction
// Ingresa el numero de puntos.
n = input('Ingrese el número de puntos: ');  
eje_x = zeros(n,1);  
eje_y = zeros(n,1); 
// Ingresar datos en x y fx
for i = 1:n
    disp(sprintf('Digite x(%d): ', i));  
    eje_x(i) = input('');
    disp(sprintf('Digite f(x(%d)): ', i));  
    eje_y(i) = input('');
end
// Mando a llamar a la funcion de langrage
resultado = Sol_Lagrange(eje_x, eje_y, n);
rango_x = linspace(min(eje_x), max(eje_x), 1000);
rango_y = zeros(1,length(rango_x));
for i = 1:length(rango_x)
    rango_y(i) = horner(resultado, rango_x(i));  
end
// Grafica de la funcion
plot(rango_x, rango_y, 'b-', eje_x, eje_y, 'ro');
xlabel('x');
ylabel('f(x)');
title('Gráfica del polinomio de Lagrange');

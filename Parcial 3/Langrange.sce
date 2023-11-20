clear();
// Puntos en X
puntos = input("Digite los puntos X: ");
// Tabla
x=[];
fx=[];
// Variables
a=[];
b=[];
c=[];
numerador=[];
denominador=[];
resultante=[];
// Asignando valores a la tabla
i=1;
while i <= puntos then
    x(i) = input("Digite el valor de x"+string(i)+": ");
    fx(i) = input("Digite el valor de f("+string(i)+"): ");
    i = i + 1;
end
// Asignacion de valores a sus respectivas variables
if puntos == 2 then
    printf("Segundo Grado");
    // Asignacion de valores a mi "A"
    i=1;
    while i <= puntos then
        j=1;
        while j <= puntos then
            if i <> j then
                a(j) = x(i);
            end
            j=j+1;
        end
        i=i+1;
    end
    // Asignacion de valores en el numerador
    i=1;
    while i <= puntos then
        numerador(i) = a(i);
        i=i+1;
    end
    disp(numerador);
    // Asignacion de valores en el denominador
    i=1;
    while i <= puntos then
        denominador(i) = a(i);
        i=i+1;
    end
elseif puntos == 3 then
    printf("Seleccionaste 3");
elseif puntos == 4 then
    printf("Seleccionaste 4");
end


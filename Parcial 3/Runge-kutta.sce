clear();
// Variables
a = input("Digite el valor de a: ");
b = input("Digite el valor de b: ");
xi = []; // Columna X
yi = []; // Columna Y
k1 = []; // Columna de k1
k2 = []; // Columna de k2
k3 = []; // Columna de k3
k4 = []; // Columna de k4
dx = input("Digite el valor de dx: "); // Dato de dx
intervalo = input("Digite el intervalo de 0 a "); // Intervalo máximo
xi(1) = 0; // Valor inicial de x
yi(1) = 0; // Valor inicial de y
// Incrementadores
i = 0;
posicion = 1;
//Decision
while i <= intervalo then
    xi(posicion)=i;
    posicion = posicion+1;
    i = i + dx;
end
i = 2;
salida = 0.1;
while salida < intervalo then
    k1(i-1)=(b*xi(i-1)-a*xi(i-1)*yi(i-1))*dx;
    k2(i-1)=(b*(xi(i-1)+(dx/2)) - a*(xi(i-1)+(dx/2))*(yi(i-1)+(k1(i-1)/2)))*dx;
    k3(i-1)=(b*(xi(i-1)+(dx/2)) - a*(xi(i-1)+(dx/2))*(yi(i-1)+(k2(i-1)/2)))*dx;
    k4(i-1)=(b*(xi(i-1)+dx) - a*(xi(i-1)+dx)*(yi(i-1) + k3(i-1)))*dx;
    yi(i)=(yi(i-1))+(1/6)*(k1(i-1)+2*k2(i-1)+2*k3(i-1)+k4(i-1));
    i=i+1;
    salida = salida + dx;
end

plot(xi,yi);



clear();
// Variables
a = input("Digite el valor de a: ");
b = input("Digite el valor de b: ");
c = input("Digite el valor de c: ");
dx = input("Digite el valor de dx: ");
intevaloMin = input("Digite el valor del intervalo min : ");
intevaloMax = input("Digite el valor del intervalo max : ");
// Areglos para mis columnas "X" y "Y"
x0=[];
y0=[];
// Valores iniciales para x0 y y0
x0(1) = 0;
y0(1) = 0;
// Contador para el arreglo de mis columnas
i = 2;
// Asignacion de valores para mis columnas
while(intevaloMin < intevaloMax) then
    x0(i)=x0(i-1)+dx;
    y0(i)=((c*y0(i-1)) - (b*y0(i-1)) * y0(i-1))*dx-y0(i-1);
    i=i+1;
    intevaloMin=intevaloMin+dx;
end;
disp(x0);
disp(y0);
plot(x0,y0);

//yi = (c*result(i-1,1)-(b*result(i-1,1))*result(i-1,2))*dx+result(i-1,2);

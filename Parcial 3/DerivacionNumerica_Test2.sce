clear();

a = input("Ingrese el valor de a: ");
b = input("Ingrese el valor de b: ");
c = input("Ingrese el valor de c: ");
x0 = input("Ingrese el valor de x0: ");
y0 = input("Ingrese el valor de y0: ");
dx = input("Ingrese el valor de dx: ");
intMin = input("Ingrese donde inicia el intervalo: ");
intMax = input("Ingrese donde termina el intervalo: ");
result = zeros(intMax, 2);
xi = 0;
contador = 0;

for i=intMin:intMax
    xi =  xi+dx;
    contador = contador + 1;
    result(contador,1) = xi;
    
    if (i==intMin) then
        yi = (c*x0-(b*x0)*y0)*dx+y0;
    else
        yi = (c*result(contador-1,1)-(b*result(contador-1,1))*result(contador-1,2))*dx+result(contador-1,2);
    end
    
    result(contador,2)= yi;    
end

figure;
plot(result(:,1),result(:,2), 'LineWidth', 2);

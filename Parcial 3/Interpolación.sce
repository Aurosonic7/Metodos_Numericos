clear();
[fd_ace_abs,SST_ace_abs,Sheetnames_ace_abs,Sheetpos_ace_abs] = xls_open('/Users/christianvicente/Desktop/La Salle Oaxaca/5º_Semestre/Métodos númericos/Parcial 3/DatosDePruebaInterpolacion.xls');
[datos_de_excel,TextInd_ace_abs] = xls_read(fd_ace_abs,Sheetpos_ace_abs(1));
//Columnas de excel
N = datos_de_excel(:,1); // Columna N
X = datos_de_excel(:,2); // Columna X
fx = datos_de_excel(:,3); // Columna f(x)
//Variables
interpolacion = input("Digite la interpolacion a ocupar [0.1 - 0.0001]: ");
j = interpolacion;
i =1;
acumulador = 0;
incrementador=1;
fy = [];
x = [];
//Operacion de interpolacion
while i <= length(N) then
    while acumulador < X(i) then
            fy(incrementador) = fx(i-1)+((fx(i) - fx(i-1))/(X(i) - X(i-1)))*(acumulador - X(i-1));
            x(incrementador) = acumulador;
            acumulador = acumulador + j;
            incrementador = incrementador + 1;
    end
    i = i + 1;
end
plot(x,fy,'r*-','LineWidth',5,'MarkerSize',8);

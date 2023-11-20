clear();
// Lectura del archivo en excel
[fd_ace_abs,SST_ace_abs,Sheetnames_ace_abs,Sheetpos_ace_abs] = xls_open('/Users/christianvicente/Desktop/La Salle Oaxaca/5º_Semestre/Métodos númericos/Parcial 3/aceleracion.xls');
[datos_de_excel,TextInd_ace_abs] = xls_read(fd_ace_abs,Sheetpos_ace_abs(1));
// Columnas de excel
X = datos_de_excel(:,1); // Columna X
N = datos_de_excel(:,2); // Columna F(x)
// Gráfica de la funcion
plot(X,N);
// Rectangulo superior
superior = 0;
i = 2;
// Superior
while i <= length(X) then
    if N(i) > N(i-1) then
        superior=superior+(N(i)*(X(i)-X(i-1)));
    else
        superior=superior+(N(i-1)*(X(i)-X(i-1)));
    end
    i=i+1;
end
printf("Superior: %.4f ",superior);
inferior = 0;
i = 2;
// Inferior
while i <= length(X) then
    if N(i) < N(i-1) then
        inferior=inferior+(N(i)*(X(i)-X(i-1)));
    else
        inferior=inferior+(N(i-1)*(X(i)-X(i-1)));
    end
    i=i+1;
end
printf("Inferior: %.4f ",inferior);
trapecio = 0;
i = 2;
// Trapecio
while i <= length(X) then
    trapecio=trapecio+(((N(i) + N(i-1))/2)*(X(i)-X(i-1)));
    i=i+1;
end
printf("Trapecio: %.4f ",trapecio);











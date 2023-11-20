clear();
// Lectura de excel
[fd_ace_abs,SST_ace_abs,Sheetnames_ace_abs,Sheetpos_ace_abs] = xls_open('/Users/christianvicente/Desktop/La Salle Oaxaca/5º_Semestre/Métodos númericos/Parcial 3/aceleracion.xls');
[datos_de_excel,TextInd_ace_abs] = xls_read(fd_ace_abs,Sheetpos_ace_abs(1));
// Columnas de excel
X = datos_de_excel(:,1); // Columna X
N = datos_de_excel(:,2); // Columna F(x)
// Gráfica de la funcion
//plot(X,N);
//variables
adelantada = [];
atrasada = [];
media = [];
i = 2;
atrasada(1)=0;
j = 2;
while i <= length(N) then
    adelantada(i-1) = (N(i)-N(i-1))/(X(i)-X(i-1));
    atrasada(j) = (N(i)-N(i-1))/(X(i)-X(i-1));
    j=j+1;
    i=i+1;
end
adelantada(i-1)=0;
//disp(adelantada);
figure;
plot(X,adelantada,'r');
//disp(atrasada);
figure;
plot(X,atrasada,'k');
i = 4;
media(1)=0;
while i <= length(N)+1 then
    media(i-2)=(N(i-1)-N(i-3))/(X(i-1)-X(i-3));
    i=i+1;
end
media(i-2)=0;
//disp(media);
figure;
plot(X,media,'m');

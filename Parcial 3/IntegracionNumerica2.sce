clear();
[fd_0, SST_0, Sheetnames_0, Sheetpos_0] = xls_open('/Users/christianvicente/Desktop/La Salle Oaxaca/5º_Semestre/Métodos númericos/Parcial 3/aceleracion.xls');
[data, TextInd_0] = xls_read(fd_0, Sheetpos_0(1));
mclose(fd_0);
fx = data(:,1);
x=zeros(length(fx),1);
conta = 0;
for i=1:length(fx)
    conta = conta+1;
    x(i,1) = conta;
end
ars = 0; //area rectangulo superior
ari = 0; //area rectangulo inferior
at = 0; //area trapecio

for i=1:length(fx)-1
    x1 = x(i,1);
    x2 = x(i+1,1);
    //rectangulo superior
    if (x1>x2) then
        fx2 = fx(i,1);
    else
        fx2 = fx(i+1,1);
    end
    ars = ars + ((x2-x1)*fx2);
    
    //rectangulo inferior
    if (x1>x2) then
        fx1 = fx(i+1,1);
    else
        fx1 = fx(i,1);
    end
    ari = ari + ((x2-x1)*fx1);
    
    //trapecio
    fx3 = (fx(i,1)+fx(i+1,1))/2;
    at = at + ((x2-x1)*fx3);
end
disp("Area rectangulo superior: "+string(ars));
disp("Area rectangulo inferior: "+string(ari));
disp("Area trapecio: "+string(at));

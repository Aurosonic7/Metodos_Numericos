clear;
//Funcion de ingreso de valores a la matriz
function m=IngresoValoresMatriz(matriz)
    for i=1:n
        for j=1:n+1
            if j < n+1 then
                matriz(i,j)=input("Valor de la matriz["+string(i)+"]["+string(j)+"]= ");
            else
                matriz(i,j)=input("Valor del vector sol "+string(i)+": " );
            end
        end
    end
    m=matriz;
endfunction
//Ingreso de los valores de los intervalos 
function inter=IngresoValoresIntervalos(intervalos)
    for j=1:n
        intervalos(j)=input("Intervalo x"+string(j)+"= ");
    end
    inter=intervalos;
endfunction
//Funcion de muestreo de la matriz
function MuestraMatriz(matriz)
    for i=1:n
        for j=1:n+1
            if j < n+1 then
                printf("%dx%d ",matriz(i,j),j);
            else
                printf("= %d",matriz(i,j));
            end
        end
        printf("\n");
    end
endfunction
//Funcion despeje de ecuaciones de la matriz estatica
function intervalosAux = DespejaMatrizYValoresIntervalos(Matriz,intervalos)
    numerador=0; //Parte de arriba
    denominador=0; //Parte de abajo
    intervalosAux=intervalos();
    // Para n
    for i=1:n
        posicion=i;
        for j=1:n+1
            if j == posicion then
                denominador = Matriz(i,j); // Valor denominador
                //printf("Estoy en la posicion %d y tiene el valor de %d\n",posicion,Matriz(i,j));
            elseif j < n+1 then
                numerador = numerador + ( (-1) * Matriz(i,j) * intervalos(j) ); // Valor numerador
                //printf("%d * %d ",(-1)*Matriz(i,j),intervalos(j));
            else
                numerador = numerador + Matriz(i,j); // Valor numerador
                //printf("%d ",Matriz(i,j));
            end
        end
        resultado = numerador/denominador;
        //printf("Resultado de %d/%d %i: %f\n",numerador,denominador,i,resultado);
        intervalosAux(i)=resultado;
        numerador=0;
    end
endfunction
//Variables estaticas
n = input("Digite el tamaño del sistema de ecuaciones NxN: ");
matriz = zeros(n,n+1);
intervalos = zeros(n);
// Ingreso de valores de la matriz
matriz = IngresoValoresMatriz(matriz);
//Ingreso de valores del intervalo
intervalos = IngresoValoresIntervalos(intervalos);
// Visualizacion de la matriz
MuestraMatriz(matriz);
    
k = 1;

while k <= 50
    // Despejando la matriz
    if k == 1 then
        interv = DespejaMatrizYValoresIntervalos(matriz,intervalos);
    else 
        interv = DespejaMatrizYValoresIntervalos(matriz,interv);
    end
    for i=1:n
        printf("%f\n",interv(i));
    end
    printf("\n");
 k = k + 1;
end











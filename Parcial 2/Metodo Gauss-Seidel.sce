clear;
//Funciones
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
//Funcion de ingreso de los intervalos a la matriz
function inter=IngresoValoresIntervalos(intervalos)
    for j=1:n
        if j <> 1 then
            intervalos(j)=input("Intervalo x"+string(j)+"= ");
        end
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
//Funcion despeje de ecuaciones de la matriz
function DespejaMatrizYValoresIntervalos(Matriz,intervalos)
    numerador=0; //Parte de arriba
    denominador=0; //Parte de abajo
    
    // Para x1, x2 y x3
    for i=1:n
        numDespj=i;
        for j=1:n+1
            if j == numDespj then
                denominador = Matriz(i,j); // Valor denominador
                printf("d");
            elseif j < n+1 then
                numerador = numerador + ( (-1) * Matriz(i,j) * intervalos(j) ); // Valor numerador
                printf("n");
            else
                numerador = numerador + Matriz(i,j); // Valor numerador
                printf("s");
            end
        end
    end
    
endfunction

//Variables estaticas
n = input("Digite el tamaño del sistema de ecuaciones NxN: ");
matriz=zeros(n,n+1);
intervalos=zeros(n);
// Ingreso de valores de la matriz
matriz=IngresoValoresMatriz(matriz);
//Ingreso de valores del intervalo
intervalos=IngresoValoresIntervalos(intervalos);
// Visualizacion de la matriz
MuestraMatriz(matriz);
// Valores de despejes
DespejaMatrizYValoresIntervalos(matriz,intervalos);









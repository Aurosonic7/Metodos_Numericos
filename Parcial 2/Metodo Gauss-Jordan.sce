clear;
//Funcion de decimal a fraccion
function frac = fraccion(decimal)
    tolerance = 1e-6;
    numerador = round(decimal);
    denominador = 1;
    while abs(decimal - numerador / denominador) > tolerance
        denominador = denominador + 1;
        numerador = round(decimal * denominador);
    end
    frac = string(numerador) + "/" + string(denominador);
endfunction

//Variables dinamicas
n=input("Digite el sistema de ecuaciones NxN: ");
matriz=zeros(n,n+1)

i=1;
while i <= n then //Filas = i;
    j=1;
    while j <= n+1 then //Columnas = j;
        if(j < n+1) then matriz(i,j)=input("Matriz["+string(i)+"]["+string(j)+"]= ");
        else matriz(i,j)=input("Valor del vector "+string(i)+" solucion: ");
        end
        j=j+1;
    end
    i=i+1;
end

//Iteraciones a realizar
k=1;
while k <= n then //Fila a iniciar
    //Dividir la fila k en 1
    j=1;
    valorAux=matriz(k,k);
    while j<=n+1 then //Columnas = j;
        //printf("%d/%d ",matriz(k,j),valorAux);
        matriz(k,j)=matriz(k,j)/valorAux;
        j=j+1;
    end
    //Restar las filas despues de dividir en la fila k
    i=1;
    while i<=n then //Filas = i;
        j=1;
        pivote=matriz(i,k); //Obtengo un pivote de la fila que me encuentro para no perder el valor
        while j<=n+1 then //Columnas = j;
            if(k<>i) then //Si la fila que modifique es diferente a fila que recorrere
                matriz(i,j)=matriz(i,j)-pivote*matriz(k,j);
            end
            j=j+1;
        end
        i=i+1;
    end
    //Mostrar matriz
    /*
    i=1;
    while i <= n then //Filas = i;
        j=1;
        while j<=n+1 then //Columnas = j;
            printf("%f ",matriz(i,j));
            j=j+1;
        end
        printf("\n");
        i=i+1;
    end
    printf("\n");
    
    printf("Iteracion %d realizada...\n\n",k);
    */
    k=k+1;
end

printf("Los resultados son:\n");
matrizAux = [];
for i=1:n
    for j=1:n+1
        if j==n+1 then
            matrizAux(i,j)=fraccion(matriz(i,j));
            printf("x%d: %s\n",i,matrizAux(i,j));
        end
    end
end








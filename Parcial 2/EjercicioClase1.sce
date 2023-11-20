clear;
//Variables
exponente=input("Digite el valor del exponente mayor: ");
exponente=exponente+1;
funcion(exponente)=[];
funcionDerivada(exponente)=[];
resultadoSuperior=0.0;
resultadoInferior=0.0;
pilaResultados(exponente+1)=[];
ñ=1;
bandera=1;
//printf("El exponente es: %g",exponente-1);
i=1;
//Ingreso los valores a mi arreglo funcion.
while i<=exponente then
    if i==1 then
        funcion(i)=input("Digite el coeficiente de ");
     elseif i==2 then
        funcion(i)=input("Digite el coeficiente de x ");
     else
        funcion(i)=input("Digite el coeficiente de x^"+string(i-1)+": ");
    end
    i=i+1;
end

n=1//Empezara en la primera iteracion
fin=25//Donde terminara las iteraciones
//Ajustarlo de donde a donde iniciara!!!
Xn=-10; //Valores en los que se movera
// Xn=input("Digite el Xn a iniciar: "); //Donde iniciara el Xn
// fin=input("Digite el numero de iteraciones a realizar: ");
aux=Xn //Almaceno el valor para ocuparlo y desplazarme
while aux<=fin
    //Derivo la funcion
    //printf("La funcion normal es: ");
    i=1;
    j=1;
    while i<=exponente then
        if i==1 then
            //printf("%g ",funcion(i));
            resultadoSuperior=funcion(i);
        elseif i == 2 then
            //printf("%gx^%g ",funcion(i),i-1);
            resultadoSuperior=resultadoSuperior+(funcion(i)*Xn^(i-1));
            funcionDerivada(j)=funcion(i)*(i-1);
            j=j+1;
        else
            //printf("%gx^%g ",funcion(i),i-1);
            resultadoSuperior=resultadoSuperior+(funcion(i)*Xn^(i-1));
            funcionDerivada(j)=funcion(i)*(i-1);
            j=j+1;
        end
        i=i+1;
    end
    //printf("\n");
    //printf("La funcion derivada es: ");
    //Muestro los nuevos valores de la derivada
    j=1;
    while j<exponente then
        if j==1 then
            //printf("%g ",funcionDerivada(j));
            resultadoInferior=funcionDerivada(j);
        elseif j == 2 then
            //printf("%gx ",funcionDerivada(j));
            resultadoInferior=resultadoInferior+(funcionDerivada(j)*Xn^(j-1));
         else
            //printf("%gx^%g ",funcionDerivada(j),j-1);
            resultadoInferior=resultadoInferior+(funcionDerivada(j)*Xn^(j-1));
        end
        j=j+1;
    end
    //printf("\nEl resultado superior es: %d",resultadoSuperior);
    //printf("\nEl resultado inferior es: %d",resultadoInferior);
    //printf("\nEl resultado de Xn es: %d",Xn);
    Xn=Xn-(resultadoSuperior/resultadoInferior);
    //printf("\nEl resultado total final de Xn-1 es: %f\n",Xn);
    if n==fin then
        printf("###Posible resultado: %f\n",Xn);
        aux=aux+1;
        Xn=aux;
        n=1;
    end
    n=n+1; //Numero de iteraciones a realizar
    //printf("La iteracion es: %g",iteraciones)
end
//Mostrando la pila de resultados
//printf("%d",length(pilaResultados));
/*
i=1;
while i<=length(pilaResultados)
    printf("Los resultados son: %f\n",pilaResultados(i))
    i=i+1;
end
*/

clear;
//variables dinamicas
exponente = input("Digite el valor del exponente máximo: ");
exponente=exponente+1;
a = input("Digite el valor de a: ");
b = input("Digite el valor de b: ");

funcion(exponente)=[];
fa=0;
fb=0;
fab=0;
m=0;
fm=0;
final=100; //Numero de iteraciones a realizar
iteraciones=1;
opcion=1
//Ingreso los valores a mi arreglo funcion.
i=1;
while i<=exponente then
    if i==1 then
        funcion(i)=input("Digite el primer valor ");
     elseif i==2 then
        funcion(i)=input("Digite el coeficiente de x ");
     else
        funcion(i)=input("Digite el coeficiente de x^"+string(i-1)+": ");
    end
    i=i+1;
end
//tamaño de mi arreglo
//printf("%d",length(funcion));

while opcion==1
    while iteraciones <= final then
        //Realizar la operacion de f(a) y f(b)
        i=1;
        //Realizo la operacion de m aqui para meterlo de una solo vez en los ciclos
        m=(a+b)/2;
        while i<=exponente then
            if i == 1 then
                //printf("%f ",funcion(i));
                fa=funcion(i);
                fb=funcion(i);
                fm=funcion(i);
            elseif i == 2 then
                //printf("%fx ",funcion(i));
                fa=fa+(funcion(i)*a);
                fb=fb+(funcion(i)*b);
                fm=fm+(funcion(i)*m);
            else
                //printf("%fx^%d ",funcion(i),i-1);
                fa=fa+(funcion(i)*a^(i-1));
                fb=fb+(funcion(i)*b^(i-1));
                fm=fm+(funcion(i)*m^(i-1));
            end
            i=i+1;
        end
        fab=fa*fb;
        //printf("\nEl valor de f(a) = %f y el valor de f(b) = %f",fa,fb);
        //printf("\nEl valor de f(a) * f(b) = %f",fab);
        //printf("\nEl valor de m = %f",m);
        if iteraciones==final then
            printf("El resultado es: %f",m);
        end
        //printf("\nEl valor de fm = %f\n",fm);
        if (fa*fm) < 0.0 then
            a=a;
            //printf("Entre + fa");
        else
            a=m;
            //printf("%f < 0.0",fa*fm);
            //printf("a=m\n");
        end
        if (fa*fm) < 0.0 then
            b=m;
            //printf("Entre + fb");
            //printf("b=b\n");
        else
            b=b;
            //printf("%f < 0.0",fb*fm);
            //printf("b=m\n");
        end
    iteraciones=iteraciones+1;
    end
    printf("\nDesea volver a ingresar otro intervalo?\n");
    printf("1.- Ingresar nuevo intervalo.\n");
    printf("0.- Salir\n");
    opcion=input("Digite la opcion a escojer: ");
    if opcion == 1 then
        a = input("Digite el valor de a: ");
        b = input("Digite el valor de b: ");
        iteraciones=1;
    end
end






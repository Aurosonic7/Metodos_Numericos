clear
//La siguiente funcion que ocupe fue la misma para combinaciones.
function coeficiente = combinacion(n,r)
    resta=n-r
    //Esta decicion la ocupo para determinar si n es igual a 0 le asigno n el valor de 1
    //Despues si ese no es el caso de igual manera con r.
    if n==0 then
        n=1
    elseif r==0 then
        r=1
    elseif resta==0 then
        resta=1
    end
    i=n
    nf=n
    if i <> 1 then
        //Este ciclo while lo que hace solo es realizar la operacion de n factorial.
        while i>1 //n!
            i=i-1
            if i==r then
                i=1
                r=1
            end
            if i== resta then
                i=1
                resta=1
            end
            nf=i*nf
        end
        nf=i*nf
        i=r
        rf=r
        //Este ciclo while lo que hace solo es realizar la operacion de r factorial.
        while i>1 //r!
            i=i-1
            rf=i*rf
        end
        i=resta
        restaf=resta
        while i>1
            i=i-1
            restaf=restaf*i
        end
    else
        nf=1
        rf=1
        restaf=1
    end
    coeficiente=nf/(rf*restaf)
endfunction
n=input("Digite el valor de n iteraciones: ");
i=0;
incrementador=1;
//Aqui solo le digo que si n == 0 que imprima 1 que seria el primer valor
if n==0 then
    printf("1");
else //De caso contrario que muestre el triangulo
    printf("1\n");
    while incrementador <= n
        while i <= incrementador
            printf("%g ",combinacion(incrementador,i));//LLamo la funcion de combinacion para mostrar los valores
            i=i+1;
        end
        i=0;
        incrementador=incrementador+1;
        printf("\n");
     end
end

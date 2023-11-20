clear
n=input("Digite el valor de n: ")
r=input("Digite el valor de r: ")
//Realizo la operacion de resta el cual esta en la formula de combinacion
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
//Realiza la operacion y despues muestro el resultado.
resultado=nf/(rf*restaf)
printf("El resultado de la combinacion es: %g\n",resultado)





















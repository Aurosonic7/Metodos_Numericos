clear
n=input("Digite el valor de n: ")
r=input("Digite el valor de r: ")
//Esta decicion la ocupo para determinar si n es igual o menor a 0 le asigno n el valor de 1
//Despues otra decision de igual manera con r le asigno un valor de 1
if n <= 0 then
    n=1
end
if r <= 0 then
    r=1
end
i=n
nf=n
resta=n-r
if i <> 1 then
    //Aqui solo se realiza la operacion de n factorial
    while i>1 //n!
        i=i-1
        if i == resta then
            i=1
            resta=1
        end
        nf=i*nf
    end
else //Aqui de ser el caso de que los valores son 1 le asigno mis variables los valores de 1.
    nf=1
    resta=1
end
//Despues muestro el resultado
resultado=nf/resta
printf("El resultado de la permutacion es: %g\n",resultado)

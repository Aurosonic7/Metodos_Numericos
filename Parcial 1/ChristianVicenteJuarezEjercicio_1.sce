clear();
grado=input("Digite el exponente del polinomio: ");
coeficiente = zeros(1, grado); 

    aux=grado;
    for i = 1:grado+1
        c=input("coeficiente: x^" + string(aux)+"=");
        coeficiente(i)=c;
        aux = aux - 1;
    end
    aux=grado;
    for i = 1:grado+1
        printf("("+string(coeficiente(i))+"x^" + string(aux)+")");
        aux = aux - 1;
        if i<=grado
        printf(string(" + "));
        end
    end
    printf(string(" = 0 "));
    
    printf("\n\n");
    printf("x = (");
    
    aux=grado;
    for i=1:grado-1
        coefT=(-1)*coeficiente(i);
        printf ("("+string(coefT) + "*x^" + string(aux) + ")+");
        aux = aux - 1;
        t(i)=coefT;
    end 
    
    coefT=(-1)*coeficiente(grado+1);
    t(grado)=coefT;
    printf("("+string(coefT)+"))/ ("+string(coeficiente(grado))+")");
    
    
    for x=-10:0.01:10
        xi=x;
        cont=0;
        for j=1:20
            aux=grado;
            re=0;
            for i=1:grado-1
                re=re+(t(i) * (xi^(aux)));;
                aux = aux - 1;
            end 
            
            re=(re+t(grado))/coeficiente(grado);
            xi=re;
            
            if abs(xi - x) < 1e-6 
                cont = cont + 1;
            end
        end
        if cont > 5
            disp(string(x));
        end
        
    end

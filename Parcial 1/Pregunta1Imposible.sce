clear();
//Definimos los arreglos que ocupare
Meses = cell(1, 12);
Digitos = cell(1, 9);
Vocales = cell(1, 5);
contador=1;
i=1;
while i <= 12//Ingreso los valores para los meses
    Meses{i} = input("Digite los meses [ene-dic]: ", 's');
    i=i+1;
end
i=1;
while i <= 10//Ingreso los valores para los digitos
    Digitos{i} = input("Digite los digitos [0-9]: ", 's');
    i=i+1;
end
i=1;
while i <= 5//Ingreso los valores para las vocales
    Vocales{i} = input("Digite la vocal: ", 's');
    i=i+1;
end
//Recorro el arreglo en 3 for para determinar las combinaciones
for h = 1:12
    for j = 1:9
        for k = 1:5
            disp(["Las iteraciones son: " Meses{h} + " " + Digitos{j} + " " + Vocales{k}]);
        end
    end
end

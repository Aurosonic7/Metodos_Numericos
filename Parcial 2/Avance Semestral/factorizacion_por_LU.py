import numpy as np
import scipy.linalg as la
import matplotlib.pyplot as plt
import time


n = 20000
A = np.random.rand(n, n)

b = np.random.rand(n)

#factorización LU
inicio = time.time()
lu, piv = la.lu_factor(A)
fin = time.time()

print(f"Tiempo de factorización LU: {fin - inicio} segundos")

# Resolver el sistema de ecuaciones utilizando la factorización LU
inicio = time.time()
x = la.lu_solve((lu, piv), b)
fin = time.time()

print(f"Tiempo de solución: {fin - inicio} segundos")



plt.plot(x)
plt.xlabel('Índice')
plt.ylabel('Valor')
plt.title('Resultados de la solución')
for i in range(n):
    print("x[",i,"] = ",x[i])
plt.show()

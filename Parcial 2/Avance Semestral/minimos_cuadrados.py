import numpy as np
import scipy.linalg as la
import matplotlib.pyplot as plt
import time

n = 20000
A = np.random.rand(n, n)

b = np.random.rand(n)

# Medir el tiempo para resolver el sistema de ecuaciones
inicio = time.time()
x, residuals, rank, s = la.lstsq(A, b)
fin = time.time()

print(f"Tiempo transcurrido: {fin- inicio} segundos")

print("Valores: ",x,"\n")

plt.plot(x)
plt.xlabel('Índice')
plt.ylabel('Valor')
plt.title('Resultados de la solución')
for i in range(n):
    print("x[",i,"] = ",x[i])
plt.show()
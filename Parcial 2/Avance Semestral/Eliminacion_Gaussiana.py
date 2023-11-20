import numpy as np
import matplotlib.pyplot as plt
import time

n = 20000
ecuaciones = np.random.rand(n, n)

igual = np.random.rand(n)

inicio = time.time()
variables = np.linalg.solve(ecuaciones, igual)
fin = time.time()

print(f"Tiempo transcurrido: {fin - inicio} segundos")

plt.plot(variables.real)
plt.xlabel('Índice')
plt.ylabel('Valor')
plt.title('Resultados de la solución')
for i in range(n):
    print("x[",i,"] = ",variables[i])
plt.show()
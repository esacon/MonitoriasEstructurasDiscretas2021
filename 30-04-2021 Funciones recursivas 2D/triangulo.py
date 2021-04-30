import numpy as np


def triangulo(i : int, j : int, k : int):
  Matriz[i][j] = k
  if k == nc**2:  # Caso base
    return Matriz
  elif j == nc - 1 and (i + j) % 2 == 0:  # Morada
    triangulo(i + 1, j, k + 1)
  elif j == i + 2 - nc and (i + j) % 2 == 1:  # Azul
    triangulo(i + 1, j, k + 1)
  elif (i + j) % 2 == 0:  # Verde
    triangulo(i - 1, j + 1, k + 1)
  elif (i + j) % 2 == 1:  # Naranja
    triangulo(i + 1, j - 1, k + 1)


def imprimir(matriz : np.matrix):
    print('\n'.join([''.join(['{:4}'.format(int(item) if item != 0 else '') for item in row]) for row in matriz]))

# Programa principal

nc = 2
while nc % 2 == 0:
  nc = int(input("Digite una cantidad impar de columnas: "))
nf = 2 * nc - 1
vi = nf // 2
vj = nc // 2

Matriz = np.zeros((nf, nc))
triangulo(nc - 1, 0, 1)  # Llamado generador
imprimir(Matriz) 
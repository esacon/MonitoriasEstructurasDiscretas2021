import numpy as np


def triangulo_espiral(i : int, j : int, k : int):
  Matriz[i][j] = k
  if k == nc**2:  # Caso base
    return Matriz
  elif j == 2*i and i >= vi:  # Azul
    triangulo_espiral(i, j - 1, k + 1)
  elif nc - 2 * i < j < 2 * i:  # Naranja
    triangulo_espiral(i, j - 1, k + 1)
  else:
    iv = i - abs(j - jv)
    triangulo_espiral(iv + abs((j + 1) - jv), j + 1, k + 1)


def imprimir(matriz : np.matrix):
    print('\n'.join([''.join(['{:4}'.format(int(item) if item != 0 else '') for item in row]) for row in matriz]))

# Programa principal
nf = int(input("Digite una cantidad de filas: "))
nc = 2 * nf - 1
vi = nf // 2
jv = nc // 2

Matriz = np.zeros((nf, nc))
triangulo_espiral(nf - 1, 0, 1)  # Llamado generador
imprimir(Matriz) 

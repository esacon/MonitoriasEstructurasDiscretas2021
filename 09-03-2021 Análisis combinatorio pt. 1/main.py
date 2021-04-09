solucion = [True for x1 in range(1, 28) for x2 in range(1, 28) for x3 in range(0, 28) if x1 + x2 + x3 == 27 and x3 % 2 == 1]

def suma(n):
  s = 0
  for k in range(n):
    s += (n - k - 1)*((1 - (-1)**k)/2)
  return s 

print("Las maneras de repartir 27 caramelos entre 3 niños es {i}".format(i=suma(27)))

print("Las maneras de repartir 27 caramelos entre 3 niños es {i}".format(i=len(solucion)))

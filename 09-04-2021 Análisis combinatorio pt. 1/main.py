num = 123

solucion = [True for x1 in range(1, num + 1) for x2 in range(1, num + 1) for x3 in range(0, num + 1) if x1 + x2 + x3 == num and x3 % 2 == 1]

def suma(n):
  s = 0
  for k in range(n - 1):
    s += (n - k - 1)*((1 - (-1)**k)/2)
  return s 

print("Las maneras de repartir {num} caramelos entre 3 niños es {i}".format(num=num, i=suma(num)))

print("Las maneras de repartir {num} caramelos entre 3 niños es {i}".format(num=num, i=len(solucion)))

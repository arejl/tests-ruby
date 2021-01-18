def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def sum(arr)
  #Si l'array est vide, la somme donnée est 0, sinon, on additionne tous les éléments de l'array.
  return arr.empty? ? 0 : arr.inject(:+)
end

def multiply(a, b)
  return a * b
end

def power(a, n)
  return a ** n
end

def factorial(n)
  #Factorielle 0 est égale à 1, sinon, on multiplie les chiffres de 1 à n.
  return n == 0 ? 1 : (1..n).inject(:*)
end

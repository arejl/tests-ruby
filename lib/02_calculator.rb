def add(a,b)
    return a+b
end

def subtract(a,b)
    return a-b
end

def sum(arr)
    return arr.empty? ? 0 : arr.inject(:+)
end

def multiply(a,b)
    return a*b
end

def power(a,n)
    return a**n
end

def factorial(n)
    return n==0 ? 1 : (1..n).inject(:*)
end
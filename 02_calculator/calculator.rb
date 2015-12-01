def add(a,b)
    a+b
end

def subtract(a,b)
    a-b
end

def sum(array)
    sum = 0
    array.each { |i| sum += i }
    sum
end

def multiply(*numbers)
    start = numbers[0]
    numbers[1..numbers.size].each do |i|
        start *= i
    end
    start
end

def power(a,b)
    a**b
end

def factorial(n)
    factorial = 1
    n.times do |i|
        factorial *= i+1
    end
    factorial
end

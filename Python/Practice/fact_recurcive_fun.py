def fact(n):
    if n == 0 or n == 1:
        return 1
    else:
        return n * fact(n-1)

n = int(input('Enter the number: '))
print(f'Factorial of {n} is',fact(n))
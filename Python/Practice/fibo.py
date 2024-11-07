num = int(input("Enter the number that you want Fibonacci to generate: "))

if num <= 0:
    print("Please enter a positive integer")

else:
    print("Fibonacci sequence: ", end=' ')
    a, b = 0, 1
    for i in range(num):
        print(a, end=' ')
        a, b = b, a + b
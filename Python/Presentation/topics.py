# For Loop Syntax
'''

for variable in iterable:
    code block to be executed for each iteration
'''

# Example : Fibonacci Sequence

num = int(input("Enter The Number : "))
    
a, b = 0, 1

if num <= 0:
    num = int(input("Please Enter The Positive Number : "))
else:
    print(f"Fibonacci Sequence of {num} is : ", end = " ")
    for i in range(num):
        print(a, end = " ")
        a, b = b, a + b
    print()


# While Loop Syntax

'''
while condition:
    code block to be executed
'''

# Example : Armstrong Number 

num = int(input("Enter The Number : "))

temp = num

l = len(str(num))

sum = 0

while temp > 0:
    digit = temp % 10 # Take Last digit
    # print(digit, end = " ")
    sum += digit ** l
    # print(sum, end=" ")
    temp //= 10 # remove last digit

if sum == num :
    print(f"{num} is an Armstrong Number.")

else :
    print(f"{num} is not an Armstrong Number.")

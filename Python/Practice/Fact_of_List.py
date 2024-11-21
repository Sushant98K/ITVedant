og_list = [10,21,11,25,32,33,10,35,45,68,10,35,45,12,21]

# Find factorial of each element

fact = 1

for i in og_list:
    for j in range(1,i+1):
        fact *= j
    print(f'Factorial of {i} is {fact}')
    fact = 1    
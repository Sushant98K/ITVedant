n = 6

result = 0

for i in range (1, n):
    if n % i == 0:
        result += i

if result == n:
    print("perfect")
else:
    print("not perfect")
n=10

result = 0

for counter in range(1, n + 1):
    if counter % 2 != 0:
        result += counter

print(result)
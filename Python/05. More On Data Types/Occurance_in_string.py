str="communication"

s="m"


# Method 1

print(str.count(s))

# Method 2

count = 0

for i in range(len(str)):
    if str[i] == s:
        count += 1

print(count)

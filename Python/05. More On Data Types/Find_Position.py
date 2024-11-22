l=[10,2,3,11,15,6,7,15,20]

n = 15
# Method 1 

print(l.index(n)+1)

# Method 2

position = 0

for i in range(len(l)):
    if l[i] == n:
        position = i+1
        break

print(position)
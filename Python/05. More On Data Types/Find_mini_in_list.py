l=[10,200,34,78,12,54]

temp = 99999999999999999999999

for i in l:
    if i < temp:
        temp = i

print(temp)
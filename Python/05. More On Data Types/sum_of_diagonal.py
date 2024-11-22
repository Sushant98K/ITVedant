l=[[1,2,4],[3,5,1],[6,2,1]]

sum = 0

for i in range(len(l)):
    sum += l[i][i]

print(sum)
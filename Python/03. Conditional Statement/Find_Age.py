r=20 #Ram
s=40 #Shyam
a=15 #Ajay

if r < s and r < a:
    youngest = 'Ram'
elif s < a and s < r:
    youngest = 'Shyam'
else:
    youngest = 'Ajay'

print(youngest)

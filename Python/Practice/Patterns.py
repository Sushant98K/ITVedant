'''
1
1 2
1 2 3
1 2 3 4
1 2 3 4 5
1 2 3 4
1 2 3
1 2
1
'''
for i in range (1,6):
    for j in range (1,i+1):
        print(j, ' ', end = ' ')
    print()
for i in range (5,0,-1):
    for j in range (1,i):
        print(j,' ', end = ' ')
    print()

'''
1 0 1 0 1
1 0 1 0 1
1 0 1 0 1
1 0 1 0 1
1 0 1 0 1
'''

for i in range (1,6):
    for j in range (1,6):
        if j % 2 == 0:
            print('0', end = ' ')
        else:
            print('1', end = ' ')
    print()

'''
1
 2
  3
   4
    5
'''

for i in range (1,6):
    for space in range (1,i):
        print(' ', end = ' ')
    for j in range (1,6):
        if j == i:
            print(j,' ', end = ' ')
    print()

'''
1
4 9
16 25 36
'''
a = 1

for i in range (1,4):
    for j in range (1,i+1):
        print(a**2, end = ' ')
        a += 1
    print()

'''
*   *



*   *
'''

for i in range (1,6):
    for j in range (1,6):
        if (i==1 and j==1) or (i==1 and j==5) or (i==5 and j==1) or (i==5 and j==5):
            print('*', end = ' ')
        else:
            print(' ', end = ' ')
    print()

'''
    *
   * *
  * * *
 * * * *
* * * * *
 * * * * 
  * * *
   * *
    * 
'''

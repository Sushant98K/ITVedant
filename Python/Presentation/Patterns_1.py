n = int(input("Enter The Rows : ")) #n=5

'''
* * * * *
* * * * *
* * * * *
* * * * *
* * * * *

for i in range(n):
    for j in range(n):
        print('*', end=' ')
    print()
--------------------------------------------------------------------------------------------------------------------------------

*
* *
* * *
* * * *
* * * * *
for i in range(n):
    for j in range(i+1):
        print('*', end=' ')
    print()
--------------------------------------------------------------------------------------------------------------------------------

* * * * *
* * * *
* * *
* *
*

for i in range(n):
    for j in range(i,n):
        print("*", end=' ')
    print()
--------------------------------------------------------------------------------------------------------------------------------

          *
        * *
      * * *
    * * * *
  * * * * *

for i in range(n):
    for space in range(i,n):
        print(' ', end=' ')
    for j in range(i+1):
        print('*', end=' ')
    print()
--------------------------------------------------------------------------------------------------------------------------------
Easy Triangle
     *
    * *
   * * *
  * * * *
 * * * * *

for i in range(n):
    for space in range(i,n):
        print(' ', end='')
    for j in range(i+1):
        print('*', end=' ')
    print()
--------------------------------------------------------------------------------------------------------------------------------
* * * * *
  * * * *
    * * *
      * *
        *

for i in range(n):
    for space in range(i):
        print(' ', end=' ')
    for j in range(i,n):
        print('*', end=' ')
    print()
--------------------------------------------------------------------------------------------------------------------------------
          *
        * * *
      * * * * *
    * * * * * * *
  * * * * * * * * *

for i in range(n):
    for space in range(i,n):
        print(' ', end=' ')
    for l_j in range(i):
        print('*', end=' ')
    for r_j in range(i+1):
        print('*', end=' ')
    print()
--------------------------------------------------------------------------------------------------------------------------------

* * * * * * * * *
  * * * * * * *
    * * * * *
      * * *
        *

for i in range(n):
    for space in range(i):
        print(' ', end= ' ')
    for j in range(i,n):
        print('*',end = ' ')
    for j in range(i+1,n):
        print('*',end = ' ')
    print()
--------------------------------------------------------------------------------------------------------------------------------

          *
        * * *
      * * * * *
    * * * * * * *
  * * * * * * * * *
  * * * * * * * * *
    * * * * * * *
      * * * * *
        * * *
          *

for i in range(n):
    for space in range(i,n):
        print(' ', end=' ')
    for l_j in range(i):
        print('*',end = ' ')
    for r_j in range(i+1):
        print('*',end = ' ')
    print()
for i in range(n):
    for space in range(i+1):
        print(' ', end=' ')
    for l_j in range(i+1,n):
        print('*', end=' ')
    for r_j in range(i,n):
        print('*', end=' ')
    print()

--------------------------------------------------------------------------------------------------------------------------------
  
  * * * * * * * * *
    * * * * * * *
      * * * * *
        * * *
          *
          *
        * * *
      * * * * *
    * * * * * * *
  * * * * * * * * *

for i in range(n):
    for space in range(i+1):
        print(' ', end=' ')
    for l_j in range(i+1,n):
        print('*', end=' ')
    for r_j in range(i,n):
        print('*', end=' ')
    print()
for i in range(n):
    for space in range(i,n):
        print(' ', end=' ')
    for l_j in range(i):
        print('*',end = ' ')
    for r_j in range(i+1):
        print('*',end = ' ')
    print()

--------------------------------------------------------------------------------------------------------------------------------
    
               *
            * *
         * * *
      * * * *
   * * * * *
* * * * * *
   * * * * *
      * * * *
         * * *
            * *
               *

for i in range(n+1):
    for space in range(i,n):
        print('',' ', end=' ')
    for j in range(i+1):
        print('*', end=' ')
    print()
for i in range(n+1):
    for space in range(i+1):
        print('',' ', end=' ')
    for j in range(i,n):
        print('*', end=' ')
    print()

'''
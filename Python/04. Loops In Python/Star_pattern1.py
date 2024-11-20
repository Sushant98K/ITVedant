'''Write python program to print following pattern for given number of lines
Input Format:

No need for the learner to take input from the User.

Input Given:

n=4

Expected Output:

****

***

**

*
'''
n=4

for i in range(0,n):
    for j in range(n,i,-1):
        print('*',end = '')
    print()
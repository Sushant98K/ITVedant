'''
Write a python code to print the following number pattern for given number of lines.
Input Format

There is no need to take input from user.

Input:

n=4

Output:

1

22

333

4444
'''
n = 4

for i in range(1,n+1):
    for j in range(1,i+1):
        print(i, end = '')
    print()
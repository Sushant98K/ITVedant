'''
Write a python program to print the alphabets triangle as shown below for given number of lines.
Input Format:

No need for the learner to take input from the User.

Input Given:

n=4

Expected Output:

A

AB

ABC

ABCD

Input Given:

n=5

Expected Output:


A

AB

ABC

ABCD

ABCDE
'''
n = 4

str=65

for i in range(str,str+n):
    for j in range(str, i+1):
        print(chr(j), end='')
    print()

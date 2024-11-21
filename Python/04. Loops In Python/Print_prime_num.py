'''
Write a python program to print the prime numbers from 1 to n.
Input Format:

No need for the learner to take input from the User.

Input Given:

n=10

Expected Output:

2

3

5

7

'''

n = 10

def prime_number(n1):
    if n1 <= 1:
        return 
    for i in range(2, int(n1**0.5)+1):
        if n1 % i == 0:
            return
    return n1

for i in range(1, n+1):
    if prime_number(i):
        print(i)
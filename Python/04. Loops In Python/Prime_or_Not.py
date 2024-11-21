'''Write a program to check whether a number is prime number or not.
Explanation:

A number that is completely divisible by 1 and itself is called as Prime number.

 

Input Format:

No need for the learner to take input from the User.

Input Given:

n=7

Expected Output:

prime

Input Given:

n=8

Expected Output:

not prime
'''

n = 7

def is_prime(n1):
    if n1 <= 1:
        return 'not prime'
    for i in range (2, int(n1**0.5)+1):
        if  n1 % i == 0:
            return 'not prime'
    return 'prime'

print(is_prime(n))
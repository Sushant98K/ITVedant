'''Write a python program to print the floyds Triangle as shown below with given number of lines.
Input Format:

No need for the learner to take input from the User.

Input Given:

n=3

Expected Output:

1

23

456

Input Given:

n=4

Expected Output:


1

23

456

78910
'''

n = 3

for i in range(1, n + 1):
    for j in range(1, i+1):
        print(j, end='')
    print()
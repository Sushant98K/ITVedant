'''
write a python program to define a function names unique_list to return unique list by removing duplicate elements in the list.
Input Format:

No need for the learner to take input from the User.

Input Given:

l=[10,2,3,3,3,4,4,4,4,5,7,8]

Expected Output:

[10,2,3,4,5,7,8]

'''
l=[10,2,3,3,3,4,4,4,4,5,7,8]

unique_list_1 = []
def unique_list(l):
    for item in l:
        if item not in unique_list_1:
            unique_list_1.append(item)
    return(unique_list_1)

print(unique_list(l))
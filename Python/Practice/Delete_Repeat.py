og_list = [10,21,11,25,32,33,10,35,45,68,10,35,45,12,21]

# Removing duplicates from the list

'''
                wrong


for i in range (0, len(list)):
    for j in range(i+1,len(list)):
        if list[i] == list[j]:
            list.remove(list[j])

print(list)
'''

unique_list_1 = []

for item in og_list:
    if item not in unique_list_1:
        unique_list_1.append(item)

# another method for getting unique values from list

print(unique_list_1)

unique_list_2 = list(set(og_list))

print(unique_list_2)
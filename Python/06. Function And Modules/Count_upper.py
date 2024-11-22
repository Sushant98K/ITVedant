def count_upper(s):
    return sum(1 for char in s if char.isupper())

str_input = "We are Learning Python"
output = count_upper(str_input)
print(output)

def count_upper_case(s):
    count = 0
    for char in s:
        if char.isupper():
            count += 1
    return count

print(count_upper_case(str_input))
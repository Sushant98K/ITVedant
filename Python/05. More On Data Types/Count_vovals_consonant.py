str="itvedant"

#find vowels and consonants

vowels = 0
consonants = 0

for i in str:
    if i in 'aeiouAEIOU':
        vowels += 1
    else:
        consonants += 1

print(vowels)
print(consonants)
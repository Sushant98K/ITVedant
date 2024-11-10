import math

# Assigning values to variables
amount = 2800

note_of_500 = 0
note_of_200 = 0
note_of_100 = 0

# Calculating the number of notes of each denomination

if amount >= 500:
    note_of_500 = amount // 500
    amount = amount % 500

if amount >= 200:
    note_of_200 = amount // 200
    amount = amount % 200

if amount >= 100:
    note_of_100 = amount // 100
    amount = amount % 100

# Printing the number of notes of each denomination
print(note_of_500)
print(note_of_200)
print(note_of_100)
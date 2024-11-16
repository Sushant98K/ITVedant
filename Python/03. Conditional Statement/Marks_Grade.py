# Given marks
m1 = 70  # Marks in subject 1
m2 = 50  # Marks in subject 2
m3 = 80  # Marks in subject 3

# Calculate total marks and percentage
total_marks = m1 + m2 + m3
percentage = (total_marks / 300) * 100  # Assuming each subject is out of 100

# Determine the grade based on the percentage
if percentage > 80:
    grade = 'A'
elif 65 <= percentage <= 80:
    grade = 'B'
elif 45 <= percentage <= 65:
    grade = 'C'
else:
    grade = 'D'

# Print the grade
print(grade)
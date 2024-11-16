# Given year
year = 2024

# Check if the year is a leap year
if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
    result = "leap"
else:
    result = "nonleap"

# Print the result
print(result)
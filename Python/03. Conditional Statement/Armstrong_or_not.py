n = 173

if n < 100 or n > 999:
    print('invalid number')
else:
    digits = [int(d) for d in str(n)]
    sum_of_digit = sum(d ** 3 for d in digits)
    if n == sum_of_digit:
        print('armstrong')
    else:
        print('non-armstrong')
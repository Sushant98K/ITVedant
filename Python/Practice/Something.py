import random


# split the string and place randomly and match with original string

og_str = 'Something'

new_str = ''.join(random.sample(og_str, len(og_str)))

print('Original String:', og_str)

print('New String:', new_str)


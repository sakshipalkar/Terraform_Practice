Python 3.8.5 (tags/v3.8.5:580fbb0, Jul 20 2020, 15:57:54) [MSC v.1924 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
>>> nums=[25,12,36,95,14]
>>> nums
[25, 12, 36, 95, 14]
>>> print(nums)
[25, 12, 36, 95, 14]
>>> print('nums')
nums
>>> nums[3]
95
>>> nums[2:]
[36, 95, 14]
>>> nums[-4]
12
>>> names=['sakshi','palkar']
>>> values=[9.5,'naavin',30]
>>> mil=[nums,values]
>>> mil
[[25, 12, 36, 95, 14], [9.5, 'naavin', 30]]
>>> mil=[nums+values]
>>> mil
[[25, 12, 36, 95, 14, 9.5, 'naavin', 30]]
>>> mil=[nums-values]
Traceback (most recent call last):
  File "<pyshell#13>", line 1, in <module>
    mil=[nums-values]
TypeError: unsupported operand type(s) for -: 'list' and 'list'
>>> nums.append(45)
>>> nums
[25, 12, 36, 95, 14, 45]
>>> nums.insert(0,1)
>>> nums
[1, 25, 12, 36, 95, 14, 45]
>>> nums.remove(6)
Traceback (most recent call last):
  File "<pyshell#18>", line 1, in <module>
    nums.remove(6)
ValueError: list.remove(x): x not in list
>>> nums.pop(0)
1
>>> nums
[25, 12, 36, 95, 14, 45]
>>> nums.pop()
45
>>> del nums[2:4]
>>> nums
[25, 12, 14]
>>> del nums[1:2]
>>> nums
[25, 14]
>>> nums.reverse()
>>> nums
[14, 25]
>>> 
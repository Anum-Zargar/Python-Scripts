string="red"
reversed=""
for ch in string:
    reversed+=ch
    print(reversed)


users={"key","anum","bad"}
for users in users:
    print(users)


fruits=["apple","banana","mango"]
for fruit in fruits:
    print(fruit)


fruits=["apple","banana","mango","redvel","orange"]
for index,fruit in enumerate(fruits):
    print(index,fruit)
for index,fruit in enumerate(fruits,start=1):
    print(index,fruit)

my_dict={"name":"anum","Job":"QA_Lead"}
for key,value in my_dict.items():
    print(key,value)
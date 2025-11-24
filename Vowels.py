from numpy.ma.core import count

text="Automation"
vowels="aeiou"
for index,letter in enumerate(text):
    if letter in vowels:
        print(index,letter)


# count vowels in as string
text="Automationedrewwe"
vowels="aeiouAEIOU"
count=0
for ch in text:
    if ch in vowels:
        count+=1
        print(" Test " ,count,ch)
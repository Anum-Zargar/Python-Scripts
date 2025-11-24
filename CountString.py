from collections import Counter

from Vowels import count

text="programming"
freq=Counter(text)
for ch,count in freq.items():
    if count > 1:
        print(ch,":",count)

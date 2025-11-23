s="hello";
t=(s)[::-1]
print(t)

text="anum"
reversed=text[::-1]
print(reversed)


text="abrascfggg"
target="g"
indexes=[ch for ch in text if ch==target]
print("Last 3 matches:", indexes[-3:])

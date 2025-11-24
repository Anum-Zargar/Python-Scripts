numbers=[1,2,3,4,5,6,7,8,9]
for number in numbers:
    print(number)


dict={"name":"anum","age":25,"Occupation":"SW Engines"}
for key,values  in dict.items():
    print (key,":",values)
    for key in dict.items():
        print("Keys only" ,":",key)
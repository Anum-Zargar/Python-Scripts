import pandas as pd
from click import password_option
from pandas.core.dtypes.common import ensure_object

pdf=pd.read_excel('Data.xlsx')
for index, row in pdf.iterrows():
    print(row[0])
    print(row[1])
    print(index)


pdf=pd.read_excel('Data.xlsx')
for index,row in pdf.iterrows():
    username=row['username']
    password=row['password']
    print('username ' + username)
    print('password ' + password)




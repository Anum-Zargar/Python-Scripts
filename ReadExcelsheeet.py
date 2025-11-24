import openpyxl
from pandas.core.interchange.from_dataframe import parse_datetime_format_str

workbook=openpyxl.load_workbook("Data.xlsx")
sheet=workbook["Sheet1"]
print(sheet)
for row in sheet.iter_rows(values_only=True):
    print(row)
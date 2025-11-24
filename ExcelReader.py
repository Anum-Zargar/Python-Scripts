import openpyxl
from pandas.io.sas.sas_constants import header_size_length
from seedir.printing import filepath


class ExcelReader:
    def read_excel_as_list_of_dicts(self, filepath, sheet_name):
        workbook = openpyxl.load_workbook(filepath)
        sheet = workbook[sheet_name]

        data = []
        headers = [cell.value for cell in sheet[1]]  # First row = header

        for row in sheet.iter_rows(min_row=2, values_only=True):
            row_dict = dict(zip(headers, row))
            data.append(row_dict)

        return data

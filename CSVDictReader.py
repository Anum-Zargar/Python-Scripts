import csv


def read_csv_as_list_of_dicts(file_path):
  data=[]
  with open(file_path,mode="r") as f:
      csv_reader=csv.DictReader(f)
      for row in csv.reader(f):
          data.append(dict(row))
          return data


result = read_csv_as_list_of_dicts("data.csv")
print(result)
from collections import defaultdict
from sys import modules

from openpyxl.utils.cell import RANGE_EXPR

arr = [1,2,3,2,1,3]
positions=defaultdict(list)
for i,val in enumerate(arr):
    positions[val].append(i)
    print(positions)


tests = [
    ("login", "test_login_valid"),
    ("login", "test_login_invalid"),
    ("cart", "test_add_item"),
    ("cart", "test_remove_item")
]

modules=defaultdict(list)
for k,v in tests:
    modules[v].append(k)
    print(modules)

# FOR  ${i} In RANGE 1,5
# Log ${i}
# END
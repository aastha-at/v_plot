import sys

rows=501
columns=1001

matrix=[[0 for _ in range(columns)] for _ in range(rows)]

for n in sys.stdin:
    line=n.split("\t")
    x=int(line[0])
    y=int(line[1])
    matrix[y][x]+=1

for rows in matrix:
    print(rows)

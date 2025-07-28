
#Script to print all the files in a folder tried with exception hadnling

import sys
import os

folder=input("enter folder names with spaces").split()

for i in folder:
     try:
      files = os.listdir(i)
     except FileNotFoundError:
       print("Enter a valid file name or directory.")
       break
     else:
      for j in files:
        print(j)

# Finder-Files
JDA Direct Commerce - Finder file import

This Python script helps to eliminate finder-file line errors when importing to the FINDER01 table
in your Direct Commerce MSSQL database.

Tested in Python 3.7

Steps:

1.) Request from your vendor that your finder-file be pipe "|" delimited.
2.) Rename file to infile.txt and remove any starter rows (example: field name line).
3.) Copy infile.txt to folder with FinderFix.py. 
4.) Run py .\FinderFix.py from CMD or Powershell window in directory.
5.) The script will dump to an output.txt (append if multiple input files).
6.) Rename FINDER01.DAT and run normal procedure for finder-file import.

Notes: This script will confine columns to character constraints in FINDER01 table and remove any right white-space.
Included is a sample infile in a format given by a vendor. 

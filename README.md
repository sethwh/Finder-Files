# Finder-Files
JDA Direct Commerce - Finder file import

These scripts help to eliminate finder-file line errors when importing to the FINDER01 table
in your Direct Commerce MSSQL database.

#Python

Tested in Python 3.7

Steps:

1.) Request from your vendor that the finder-file be pipe "|" delimited.

2.) Rename file to infile.txt and remove any starter rows (example: field name line).

3.) Copy infile.txt to folder with FinderFix.py. 

4.) Run py .\FinderFix.py from CMD or Powershell window in directory.

5.) The script will dump to an output.txt (append if multiple input files).

6.) Rename output file to FINDER01.DAT and open with text editor like Notepad++ to make sure encoding is set to UTF-8.

7.) Import finder file using using your normal routine. 

Notes: This script will confine columns to character constraints in FINDER01 table and remove any right white-space.
Included is a sample infile in a format given by a vendor. 

#Powershell

Steps:

1.) Request from your vendor that the finder-file be pipe "|" delimited.

2.) Rename file to import.csv and remove any starter rows (example: field name line).

3.) Copy import.csv to the C:\Finder folder. 

4.) Run .\FinderFix.ps1 from Powershell window or execute code from ISE or VSC.

5.) The script will dump to an output.csv (append if multiple input files).

6.) Rename output file to FINDER01.DAT and open with text editor like Notepad++ to make sure encoding is set to UTF-8.

7.) Import finder file using using your normal routine. 

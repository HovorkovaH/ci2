homework A02
A02 – Text File Analysis
Description

The texter.py script reads a text file and prints the total number of characters and the number of capital letters.

Requirements
Python 3
Git
Clone the repository

Open PowerShell and run:
git clone https://github.com/HovorkovaH/ci2.git
cd ci2
cd A02

Run the script

To process the test file, run:

python texter.py test.txt

If no filename is provided, run:
python texter.py


The script prints instructions explaining how to use it.
Implementation
The Texter class processes the file in its run() method. It uses len() to count characters and isupper() to count capital letters.
The script uses UTF-8 encoding and follows Python's PEP 8 naming and indentation conventions.

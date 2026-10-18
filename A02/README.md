homework A02
A02 – Text File Analysis and overall guide

create folder A02 and in it a file README.md
create texter.py script which reads a text file and prints the total number of characters and the number of capital letters
load texter.py into A02 folder
create file with desired text and name it test.txt

Clone the GitHub repository using SSH
git clone git@github.com:HovorkovaH/ci2.git

open in Virtual Studio Code and open new Terminal
Navigate to the local repository
cd desktop
Clone the GitHub repository
git clone git@github.com:HovorkovaH/ci2.git
Navigate to desired folder A02
cd ci2
cd A02
dir

Use the script
python texter.py test.txt  

The results were (I am number 3 on the list of students):
Number of characters: 2692
Number of capital letters: 50

Verify the latest commit and preapre to push to GitHub again
git commit -a -m "Update project files"
git log -1 --oneline
git push

Reload GitHub to show the changes

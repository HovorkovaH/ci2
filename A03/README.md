homework A03

create folder A03 and in it a file README.md
create script sdbs_parser.py which reads a html and will write to the standard output and load to A03 folder
download html file dbs_benzidine.html with from sdbs database

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
python sdbs_parser.py dbs_benzidine.html

Verify the latest commit and preapre to push to GitHub again
git commit -a -m "Update project files"
git log -1 --oneline
git push

Reload GitHub to show the changes

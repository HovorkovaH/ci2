# A06 — Plotting a CSV with Python

This assignment plots the square-root function using the data in `graph.csv`.
The CSV contains the columns `x` and `y`, with `y = sqrt(x)` for 21 rows.
Running `graph.py` reads the CSV and creates `graph.png`.

## Clone the repository

```powershell
git clone git@github.com:HovorkovaH/ci2.git
cd ci2
cd A06
```

## Create and activate a virtual environment

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
```

If PowerShell blocks activation, use `.venv\Scripts\python.exe` instead of
`python` in the following commands.

## Install dependencies and generate the graph

```powershell
python -m pip install -r requirements.txt
python graph.py
```

The script writes `graph.png` in the current directory. Optional CSV and output

## Push to git 

Verify the latest commit and preapre to push to GitHub again
```git commit -a -m "Update project files"```
```git log -1 --oneline```
```git push```

Reload GitHub to show the changes
paths can be supplied:

```powershell
python graph.py graph.csv graph.png
```

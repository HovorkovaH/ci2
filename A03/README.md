# A03 — SDBS compound-name parser

This assignment contains `sdbs_parser.py`, a Python script that parses an HTML file and prints the names of all compounds found in `<td>` elements with `class="comp-name"`, one compound per line.

## Requirements

- Python 3
- Git
- The Python package `beautifulsoup4`

## Clone the repository

```powershell
git clone git@github.com:HovorkovaH/ci2.git
cd ci2\A03
```

## Create and activate a virtual environment

Create a virtual environment named `.venv`:

```powershell
python -m venv .venv
```

Activate it in PowerShell:

```powershell
.\.venv\Scripts\Activate.ps1
```

After activation, the terminal prompt should begin with `(.venv)`.

If PowerShell reports that running scripts is disabled, allow locally created scripts for the current user:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

Confirm the change with `Y`, then activate the environment again:

```powershell
.\.venv\Scripts\Activate.ps1
```

## Install Python packages

Upgrade `pip` and install Beautiful Soup:

```powershell
python -m pip install --upgrade pip
python -m pip install beautifulsoup4
```

Verify the installation:

```powershell
python -c "import bs4; print(bs4.__version__)"
```

Save the installed package versions to `requirements.txt`:

```powershell
python -m pip freeze > requirements.txt
```

## Run the script

Run the parser on the provided HTML file:

```powershell
python sdbs_parser.py sdbs_benzidine.html
```

The script prints one compound name per line, for example:

```text
benzidine dihydrochloride
benzidine
3-methylbenzidine dihydrochloride
3,3'-dimethylbenzidine
```

The script takes the input HTML or XML file as its first command-line argument:

```powershell
python sdbs_parser.py <input_file>
```

## How the script works

`sdbs_parser.py` reads the file given as the first command-line argument, parses it with Beautiful Soup, finds all `<td>` elements whose `class` attribute is `comp-name`, and prints their text content to standard output.

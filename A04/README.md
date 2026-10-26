# A04 — SQLite Database from CSV Files

This project creates an SQLite database named `db.sqlite` from CSV files

The database contains the following tables:

- `city`
- `country`
- `countrylanguage`

After the CSV files are imported, the script answers the following question:

> What is the total population of countries with English as their official language?

## Requirements

- Python 3
- Git
- These CSV files:
  - `city.csv`
  - `country.csv`
  - `countrylanguage.csv`

No external Python packages are required; the script uses only the standard library modules `csv`, `os`, `re`, `sqlite3`, and `sys`.

## Cloning the Repository

Open PowerShell and navigate to the folder where you want to store the project:

```powershell
cd desktop
```

Clone the GitHub repository using SSH:

```powershell
git clone git@github.com:HovorkovaH/ci2.git
```

Move into the cloned repository:

```powershell
cd ci2
```

Then move into the `A04` folder:

```powershell
cd A04
```

The resulting path should look like this:

```text
C:\Users\hanic\desktop\ci2\A04
```

## Running the Script

The CSV files paths must be passed to the script.

Run:

```powershell
python db.py city.csv country.csv countrylanguage.csv
```

The script will:

1. Create `db.sqlite`, if it does not already exist.
2. Create a table for each CSV file.
3. Import the records from each CSV file.
4. Print the question and the total population of countries where English is an official language.

Expected output:

```text
What is the total population of countries with English as their official language?
459158800
```

Existing tables are not recreated.

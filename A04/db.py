import csv
import os
import re
import sqlite3
import sys


class Database:
    def __init__(self, csv_files):
        self.db_name = "db.sqlite"
        self.csv_files = csv_files
        self.connection = sqlite3.connect(self.db_name)
        self.cursor = self.connection.cursor()

        self.import_csv_files()
        self.print_english_official_population()

        self.connection.commit()
        self.connection.close()

    def table_exists(self, table_name):
        self.cursor.execute(
            "SELECT name FROM sqlite_master WHERE type = 'table' AND name = ?",
            (table_name,)
        )
        return self.cursor.fetchone() is not None

    @staticmethod
    def safe_identifier(name):
        name = name.strip()
        name = re.sub(r"[^0-9a-zA-Z_]", "_", name)

        if not name or name[0].isdigit():
            name = "_" + name

        return name

    @staticmethod
    def get_reader(file):
        sample = file.read(4096)
        file.seek(0)

        try:
            dialect = csv.Sniffer().sniff(sample, delimiters=",;\t")
        except csv.Error:
            dialect = csv.excel

        return csv.reader(file, dialect)

    def import_csv_files(self):
        for csv_file in self.csv_files:
            if not os.path.isfile(csv_file):
                print(f"File not found: {csv_file}")
                continue

            table_name = self.safe_identifier(
                os.path.splitext(os.path.basename(csv_file))[0]
            )

            if self.table_exists(table_name):
                print(f"Table '{table_name}' already exists; skipping import.")
                continue

            self.create_table_from_csv(csv_file, table_name)
            self.insert_csv_data(csv_file, table_name)

    def create_table_from_csv(self, csv_file, table_name):
        with open(csv_file, newline="", encoding="utf-8-sig") as file:
            reader = self.get_reader(file)
            headers = next(reader)

        columns = [self.safe_identifier(header) for header in headers]
        column_definitions = ", ".join(f'"{column}" TEXT' for column in columns)

        self.cursor.execute(
            f'CREATE TABLE "{table_name}" ({column_definitions})'
        )

    def insert_csv_data(self, csv_file, table_name):
        with open(csv_file, newline="", encoding="utf-8-sig") as file:
            reader = self.get_reader(file)
            headers = next(reader)

            columns = [self.safe_identifier(header) for header in headers]
            column_names = ", ".join(f'"{column}"' for column in columns)
            placeholders = ", ".join("?" for _ in columns)

            sql = (
                f'INSERT INTO "{table_name}" ({column_names}) '
                f"VALUES ({placeholders})"
            )

            self.cursor.executemany(sql, reader)

        self.connection.commit()

    def print_english_official_population(self):
        query = """
            SELECT SUM(country.Population)
            FROM country
            JOIN countrylanguage
                ON country.Code = countrylanguage.CountryCode
            WHERE countrylanguage.Language = 'English'
              AND countrylanguage.IsOfficial = 'T'
        """

        self.cursor.execute(query)
        result = self.cursor.fetchone()[0]

        print(
            "What is the total population of countries with English "
            "as their official language?"
        )
        print(result if result is not None else 0)


if __name__ == "__main__":
    database = Database(sys.argv[1:])
#!/usr/bin/env python3
import sys
from bs4 import BeautifulSoup


def main():
    if len(sys.argv) != 2:
        print("Usage: python sdbs_parser.py <input.html_or_xml>", file=sys.stderr)
        sys.exit(1)

    input_file = sys.argv[1]

    with open(input_file, "r", encoding="utf-8") as f:
        soup = BeautifulSoup(f, "html.parser")

    for td in soup.find_all("td", class_="comp-name"):
        print(td.get_text(strip=True))


if __name__ == "__main__":
    main()

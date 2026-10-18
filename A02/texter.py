
import sys


class Texter:
    def __init__(self, filename):
        self.filename = filename

    def run(self):
        try:
            with open(self.filename, encoding="utf-8") as file:
                text = file.read()
        except OSError as error:
            print(f"Error reading file: {error}")
            return

        print(f"Number of characters: {len(text)}")
        print(
            f"Number of capital letters: "
            f"{sum(char.isupper() for char in text)}"
        )


def main():
    if len(sys.argv) < 2:
        print("Usage: python texter.py <filename>")
        print("Example: python texter.py test.txt")
        return

    Texter(sys.argv[1]).run()


if __name__ == "__main__":
    main()

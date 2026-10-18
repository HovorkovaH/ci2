
import sys


class Texter:
    def __init__(self, filename):
        self.filename = filename

    def run(self):
        """Process the input text file."""
        try:
            with open(self.filename, "r", encoding="utf-8") as file:
                text = file.read()

            print(text)

        except FileNotFoundError:
            print(f"Error: File '{self.filename}' was not found.")


def main():
    if len(sys.argv) < 2:
        print("Usage: python texter.py <filename>")
        sys.exit(1)

    texter = Texter(sys.argv[1])
    texter.run()


if __name__ == "__main__":
    main()

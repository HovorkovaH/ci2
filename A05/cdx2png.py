import glob
import os
import subprocess
import sys

from openbabel import pybel


def get_smiles(cdxml_file):
    command = [
        "obabel",
        "-icdxml", cdxml_file,
        "-osmi"
    ]

    process = subprocess.run(
        command,
        capture_output=True,
        text=True
    )

    if process.returncode != 0:
        raise RuntimeError(process.stderr.strip())

    smiles_lines = [
        line.strip()
        for line in process.stdout.splitlines()
        if line.strip()
    ]

    if not smiles_lines:
        raise RuntimeError("Open Babel did not return a SMILES string.")

    return smiles_lines[0]


def main():
    if len(sys.argv) < 2:
        print("Usage: python cdx2png.py *.cdxml")
        sys.exit(1)

    cdxml_files = []
    for pattern in sys.argv[1:]:
        cdxml_files.extend(glob.glob(pattern))

    cdxml_files = sorted(set(cdxml_files))

    if not cdxml_files:
        print("No CDXML files found.")
        sys.exit(1)

    results = []

    for cdxml_file in cdxml_files:
        if not os.path.isfile(cdxml_file):
            print(f"Warning: file not found: {cdxml_file}")
            continue

        name_base = os.path.splitext(cdxml_file)[0]
        png_file = name_base + ".png"

        png_command = [
            "obabel",
            "-icdxml", cdxml_file,
            "-opng",
            "-O", png_file
        ]

        try:
            process = subprocess.run(
                png_command,
                capture_output=True,
                text=True
            )

            if process.returncode != 0:
                print(f"Error converting {cdxml_file}:")
                print(process.stderr.strip())
                continue

            if not os.path.isfile(png_file):
                print(f"Warning: PNG was not created for {cdxml_file}")
                continue

            smiles = get_smiles(cdxml_file)
            molecule = pybel.readstring("smi", smiles)
            molecular_weight = molecule.molwt

        except FileNotFoundError:
            print("Error: 'obabel' was not found in PATH.")
            sys.exit(1)
        except Exception as error:
            print(f"Warning: could not process {cdxml_file}: {error}")
            continue

        results.append((cdxml_file, molecular_weight))
        print(f"Created: {png_file}")

    if not results:
        print("No molecular weights could be calculated.")
        sys.exit(1)

    lightest = min(results, key=lambda item: item[1])
    heaviest = max(results, key=lambda item: item[1])

    print()
    print(f"Lowest Mr: {lightest[0]} (Mr = {lightest[1]:.4f})")
    print(f"Largest Mr: {heaviest[0]} (Mr = {heaviest[1]:.4f})")


if __name__ == "__main__":
    main()
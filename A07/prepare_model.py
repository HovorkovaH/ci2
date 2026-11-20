import subprocess
import sys
import tempfile
from pathlib import Path


def prepare_model(smi_path, pov_path):
    smi_path = Path(smi_path).resolve()
    pov_path = Path(pov_path).resolve()

    with tempfile.TemporaryDirectory() as temp_dir:
        generated_pov = Path(temp_dir) / "acetic_acid_generated.pov"
        subprocess.run(
            [
                "obabel",
                str(smi_path),
                "--gen3D",
                "-O",
                str(generated_pov),
            ],
            check=True,
        )
        source = generated_pov.read_text(encoding="utf-8", errors="replace")

    molecule_start = source.find("//Coodinates of atoms")
    molecule_end = source.rfind("\nmol_0")
    if molecule_start < 0 or molecule_end <= molecule_start:
        raise ValueError("Open Babel output did not contain the expected molecule.")

    molecule = source[molecule_start:molecule_end].strip()
    pov_path.write_text(
        "\n".join(
            [
                "#version 3.6;",
                "#declare BAS = true;",
                "#declare TRANS = false;",
                '#include "babel_povray3.inc"',
                "",
                molecule,
                "",
                "#declare AceticAcid = object { mol_0 translate mol_0_center }",
                "",
            ]
        ),
        encoding="utf-8",
    )
    print(f"Reusable acetic acid model saved to {pov_path}")


def main(args):
    if len(args) not in (0, 2):
        raise SystemExit("Usage: python prepare_model.py [input.smi output.pov]")
    prepare_model(*(args or ["acetic_acid.smi", "acetic_acid.pov"]))


if __name__ == "__main__":
    main(sys.argv[1:])

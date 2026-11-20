# A07 — Seven acetic acid molecules on a heptagon

`acetic_acid.smi` defines acetic acid. `prepare_model.py` uses Open Babel to
generate its 3D structure and writes the reusable POV-Ray object
`acetic_acid.pov`. `acoh7.pov` includes that object seven times at the vertices
of a regular heptagon. `babel_povray3.inc` supplies Open Babel's atom and bond
definitions.

## Clone the repository

```powershell
git clone git@github.com:HovorkovaH/ci2.git
cd ci2
cd A07
```

## Install prerequisites

Install Python 3, Open Babel 3 (including the `obabel` command), and POV-Ray
3.7. Install Open Babel from its official downloads if `obabel` is not already
available: <https://openbabel.org/>.

On Windows, POV-Ray can be installed with:

```powershell
winget install --id PersistenceOfVisionRaytracer.POVRay --exact
```

Create and activate a Python virtual environment, then install the listed
requirements:

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install -r requirements.txt
```

The Python script uses only the standard library. Open Babel and POV-Ray are
separate programs and must be installed and available on `PATH`.

## Generate the 3D molecule and render the heptagon

```powershell
python prepare_model.py acetic_acid.smi acetic_acid.pov
$scene = (Resolve-Path .\acoh7.pov).Path
& "C:\Program Files\POV-Ray\v3.7\bin\pvengine64.exe" /RENDER $scene
```

The first command converts the SMILES structure with Open Babel's `--gen3D`
option. The second renders `acoh7.png`.

POV-Ray 3.7 may block output to the project folder by default. If it reports an
I/O restriction, open **Options → Script I/O Restrictions** and add this A07
folder to the allowed write paths. Keep the other restrictions enabled, then
rerun the render command.

The generated POV-Ray include is based on Open Babel's `babel_povray3.inc`,
distributed under GPL-2.0; its license is included in `COPYING`.

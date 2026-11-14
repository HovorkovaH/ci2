import sys

import matplotlib.pyplot as plt
import numpy as np


def create_graph(csv_path="graph.csv", output_path="graph.png"):
    data = np.genfromtxt(csv_path, delimiter=",", names=True, dtype=float)
    if data.dtype.names is None or not {"x", "y"}.issubset(data.dtype.names):
        raise ValueError("The CSV file must contain columns named x and y.")
    if data.size < 20:
        raise ValueError("The CSV file must contain at least 20 data rows.")

    figure, axes = plt.subplots()
    axes.plot(data["x"], data["y"], marker="o", label="y = sqrt(x)")
    axes.set_xlabel("x")
    axes.set_ylabel("y")
    axes.set_title("Square root of x")
    axes.grid(True)
    axes.legend()
    figure.tight_layout()
    figure.savefig(output_path, dpi=150)
    plt.close(figure)
    print(f"Graph saved to {output_path}")


def main(args):
    if len(args) > 2:
        raise SystemExit("Usage: python graph.py [csv_path] [output_path]")
    create_graph(*args)


if __name__ == "__main__":
    main(sys.argv[1:])

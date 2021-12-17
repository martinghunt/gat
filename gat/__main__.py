#!/usr/bin/env python3

import argparse
import gat


def main(args=None):
    parser = argparse.ArgumentParser(
        prog="gat",
        usage="gat [options]",
        description="gat: pointless script for testing",
    )

    parser.add_argument("--version", action="version", version=gat.__version__)
    parser.add_argument("x", help="mysterious x option")
    args = parser.parse_args()
    print("Hello", args.x, gat.foo.bar())

if __name__ == "__main__":
    main()

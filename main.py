#!/usr/bin/env python3
"""Ejemplo mínimo de script Python ejecutable en Docker."""

import sys
from datetime import datetime

def main():
    now = datetime.now().isoformat(timespec="seconds")
    msg = "¡Hola desde Docker y Python!"
    print(f"[{now}] {msg}")

if __name__ == "__main__":
    main()


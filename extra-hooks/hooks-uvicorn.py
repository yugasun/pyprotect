# extra-hooks/hooks-uvicorn.py
from PyInstaller.utils.hooks import collect_submodules

all_libraries = [
    "fastapi",
    "uvicorn",
]

hidden_imports = []

for module in all_libraries:
    hidden_imports += collect_submodules(module)

## Python Source Code Protection

Use [pyinstaller](https://github.com/pyinstaller/pyinstaller) to protect your python source code.

### Environment

- `>= Python 3.10.0`

### Install requirements

```bash
pip install -r requirements.txt
```

### Develop with source code

```bash
./dev.sh
```

### Run generate script

```bash
./gen.sh
```

This command will generate a protected script in the `dist` directory.

### Run protected script

```bash
./start.sh
```

## License

MIT
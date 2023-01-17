# cs2006-jupyter-environment
A base environment (and bootstrap scripts) for running Jupyter for CS2006.

The Jupyter plugins and python packages installed in this environment are those listed in the
[CS2006 Python Readme](https://studres.cs.st-andrews.ac.uk/CS2006/Lectures/Python/README.md).

The scripts have been tested to work on the lab machines, as well as MacOS (assuming python is installed).

## Setup

```bash
git clone https://github.com/niklasdewally/cs2006-jupyter-environment cs2006-venv

# setup the virtual environment
./cs2006-venv/setup.sh

# activate the virtual environment
./cs2006-venv/bin/activate

# deactivate the virtual enviroment when done
deactivate
```

## Installing Python 3.9 (Mac OS)

Using `brew`, you can install a specific version of python.

```bash
brew install python@3.9
```

To switch to this version of python use:

```bash
brew unlink python
brew link python@3.9
```

## Modifying the environment

- To save any `pip` installed packages (for example, to sync to your own version of this repo),
use the `save-env.sh` script.

- Jupyter plugins are activated within `setup.sh`.

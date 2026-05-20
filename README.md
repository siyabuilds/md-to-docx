# md-to-docx

Convert markdown files in a folder to `.docx` using `pandoc`.

## Prerequisite

- [pandoc](https://pandoc.org/) must be installed and available in your `PATH`.

## Installation (Optional)

To make `run-convert` available globally across all directories, use the provided install script:

```bash
chmod +x install.sh
./install.sh
```

If you already have `run-convert` installed and need to update it with latest changes, you can use the `-u` override flag:

```bash
./install.sh -u
```

The script will copy `run-convert` to `~/.local/bin` and automatically add that directory to your `$PATH` (in `.bashrc` and `.zshrc`). 
After installation, reload your terminal configuration (e.g., run `source ~/.bashrc` or `source ~/.zshrc`) to apply the changes. 

## Usage

```bash
./run-convert .
```

This converts all `.md` and `.markdown` files in the target folder (non-recursive) into `.docx` files with the same base filename.

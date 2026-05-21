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
run-convert [target_directory]
```

If no `target_directory` is specified, it defaults to the current directory (`.`).

### Features

- **Recursive Processing**: Finds all `.md` and `.markdown` files (case-insensitive) in the target directory and its subdirectories.
- **Organized Output**: Saves all generated `.docx` files into a `word/` subdirectory within the target directory.
- **Smart Naming**: Files named `index.md` or `_index.md` are automatically named after their parent directory instead of "index".
- **Custom Font**: Applies "Poppins" as the main font for the generated Word documents.

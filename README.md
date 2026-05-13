# md-to-docx

Convert markdown files in a folder to `.docx` using `pandoc`.

## Prerequisite

- [pandoc](https://pandoc.org/) must be installed and available in your `PATH`.

## Usage

```bash
./run-convert .
```

This converts all `.md` and `.markdown` files in the target folder (non-recursive) into `.docx` files with the same base filename.

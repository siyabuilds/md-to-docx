#!/bin/bash

# Define the target directory
TARGET_DIR="$HOME/.local/bin"

# Create the directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Copy the script to the target directory
# (Using cp instead of mv so the original stays in the repository)
cp run-convert "$TARGET_DIR/run-convert"

# Ensure the script is executable
chmod +x "$TARGET_DIR/run-convert"

echo "Successfully copied run-convert to $TARGET_DIR"

# Add to PATH in .bashrc and .zshrc if not already present
for rc_file in "$HOME/.bashrc" "$HOME/.zshrc"; do
    if [ -f "$rc_file" ]; then
        if ! grep -q 'export PATH="$HOME/.local/bin:$PATH"' "$rc_file"; then
            echo -e '\n# Added for md-to-docx run-convert script' >> "$rc_file"
            echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$rc_file"
            echo "Added $TARGET_DIR to PATH in $rc_file"
        else
            echo "$TARGET_DIR is already in PATH in $rc_file"
        fi
    fi
done

echo ""
echo "Installation complete!"
echo "Please restart your terminal or run the following command to apply the PATH changes:"
echo "source ~/.bashrc  # (or source ~/.zshrc if you use zsh)"

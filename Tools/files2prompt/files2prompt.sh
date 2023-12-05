#!/bin/bash
# Retreive the content of a list of files, format them inside of codeblocks for easier communication and copy the formatted output to clipboard.
files=("File1" "File2" "File3")

formattedContent=""
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "Copying: $file"
        content=$(<"$file")
        fileName=$(basename "$file")
        formattedContent+="\r\n'''\r\n$fileName\r\n$content\r\n'''\r\n"
    else
        echo "Warning: File not found: $file" >&2
    fi
done
# xclip is a utility for copying to clipboard in Linux, you may need to install it
echo -e "$formattedContent" | xclip -selection clipboard

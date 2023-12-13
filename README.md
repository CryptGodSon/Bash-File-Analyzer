# Bash-File-Analyzer

## Description

This Bash script is designed for analyzing files within a specified directory. The script checks free disk space, the space occupied by all files in the directory, and provides a percentage distribution of file extensions.

## How to Use

1. Copy the script to a file with the .sh extension, e.g., `analyze_files.sh`.

2. Grant execution permissions to the script:

   ```bash
   chmod +x analyze_files.sh
   ```

3. Run the script, providing the path to the directory as an argument:

   ```bash
   ./analyze_files.sh /path/to/directory
   ```

## Examples
```lua
/example_directory
|-- file1.txt
|-- file2.txt
|-- document.doc
|-- image.jpg
|-- script.sh
|-- subdirectory
    |-- data.csv
    |-- config.yml
```
```yaml
Free disk space: 10G
Occupied space by all files: 128K

Percentage distribution of file extensions:
txt: 40.00%
doc: 20.00%
jpg: 20.00%
sh: 10.00%
csv: 5.00%
yml: 5.00%

```


## Requirements

- Bash (tested on version 4.4.20)

## Analysis Results

Upon running the script, you will receive information about:

- **Free Disk Space:** Displays the amount of available space on the disk where the analyzed directory is located.

- **Space Occupied by Files:** Provides the amount of space occupied by all files in the analyzed directory.

- **Percentage Distribution of File Extensions:** Presents the percentage distribution of different file extensions in the analyzed directory.

## Notes

Ensure that you have the appropriate permissions for the analyzed directory, and the script is run as a user with access to the file data.

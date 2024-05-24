# Amass

This bash script concatenates the contents of your codebase into a single file, allowing you to provide complete code context to language models (LLMs) at once.

## Usage

1. Save the script to a file, e.g., `workspace.sh`.

2. Make the script executable by running the following command in your terminal: `chmod +x workspace.sh`

3. Open the script in a text editor and modify the following variables:

- `WORKSPACE_DIR`: Set this to the path of your workspace directory.
- `OUTPUT_FILE`: Specify the desired name and path for the output file.
- `INCLUDE_EXTENSIONS`: Add or remove file extensions that you want to include in the output file.

4. Run the script: `./workspace.sh`

The script will traverse your workspace directory, locate files with the specified extensions and concatenate their contents into the output file. The file paths will be included as comments in the output file for better context.

After running the script, you will have a single file (`workspace_context.txt` by default) containing the concatenated contents of your codebase, ready to be fed to LLMs or other tools.

# data_reports
Quarto reports generated to show status of MBON-mediated datasets.

## Usage
1. export the [MBON datasets spreadsheet](https://docs.google.com/spreadsheets/d/1jBS8ASS27yV8APZ8Fh-tgX6dHdopwianrUZv0kbKcxw/edit#gid=1284796732) as `.csv` & save to `./data/MBON dataset registration (Responses) - Form Responses 1.csv`
2. `quarto render .` NOTE: also try `quarto render . --no-cache`
3. `quarto preview .`
4. `quarto publish .`
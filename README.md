# data_reports
Quarto reports generated to show status of MBON-mediated datasets.

Is your dataset missing?
Add it using the [dataset registration form](https://docs.google.com/forms/d/144YD_VfS6Oa9GqDRAND-NJageqZUWvI7y_PHETNUhPI/viewform?edit_requested=true#start=invite).
NOTE: This site is only updated manually; request an update by [opening an issue](https://github.com/marinebon/data_reports/issues/new) to expedite the process.

## Usage
1. export the [MBON datasets spreadsheet](https://docs.google.com/spreadsheets/d/1jBS8ASS27yV8APZ8Fh-tgX6dHdopwianrUZv0kbKcxw/edit#gid=1284796732) as `.csv` & save to `./data/MBON dataset registration (Responses) - Form Responses 1.csv`
  * `wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1jBS8ASS27yV8APZ8Fh-tgX6dHdopwianrUZv0kbKcxw' -O ~/Downloads/MBON\ dataset\ registration\ \(Responses\)\ -\ Form\ Responses\ 1.csv`
  * or `mv ~/Downloads/MBON\ dataset\ registration\ \(Responses\)\ -\ Form\ Responses\ 1.csv  ./data/.`
2. `quarto render` NOTE: also try `quarto render . --no-cache`
3. `quarto preview`
4. `quarto publish`

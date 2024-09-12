# data_reports
Quarto reports generated to show status of MBON-mediated datasets.

Is your dataset missing?
Add it using the [dataset registration form](https://docs.google.com/forms/d/144YD_VfS6Oa9GqDRAND-NJageqZUWvI7y_PHETNUhPI/viewform?edit_requested=true#start=invite).
NOTE: This site is only updated manually; request an update by [opening an issue](https://github.com/marinebon/data_reports/issues/new) to expedite the process.

## Usage
1. export the [MBON datasets spreadsheet](https://docs.google.com/spreadsheets/d/1jBS8ASS27yV8APZ8Fh-tgX6dHdopwianrUZv0kbKcxw/edit#gid=1284796732) as `.csv` & save to `./data/MBON dataset registration (Responses) - Form Responses 1.csv`
2. `quarto render` NOTE: also try `quarto render . --no-cache`
  * you can clear cache manaully eg: `rm -rf regional_report/regional_reports/*`
3. `quarto preview`
4. `quarto publish`

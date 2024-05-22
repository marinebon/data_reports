# creates a report template .qmd for each
REPORT_TEMPLATE = "regional_report/regional_report.qmd"
REPORTS_DIR = "regional_report/regional_reports"

library(whisker)
library(glue)
library(here)

# Proceed if rendering the whole project, exit otherwise
if (!nzchar(Sys.getenv("QUARTO_PROJECT_RENDER_ALL"))) {
  quit()
}

# create the template
templ <- readLines(REPORT_TEMPLATE) 
templ <- gsub(
  "SE US", "{{project_id}}", templ
)

dir.create(REPORTS_DIR, showWarnings=FALSE)

# === iterate through the data structure 
source(here("R/getCleanedData.R"))
data <- getCleanedData()

# print unique values in `Parameter` column
unique_parameters <- unique(data$`mbon.project`)

for (param in unique_parameters) {
  params = list(
    project_id = param
  )
  print(glue::glue("=== creating template for '{param}' ==="))
  
  writeLines(
    whisker::whisker.render(templ, params),
    file.path(glue("{REPORTS_DIR}/{param}.qmd"))
  )
}
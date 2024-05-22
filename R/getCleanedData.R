getCleanedData <- function(){
  data <- read.csv("data/MBON dataset registration (Responses) - Form Responses 1.csv")
  
  data <- data %>%
    rename(  # shorten column names
      mbon.project = Which.MBON.project.is.this.dataset.associated.with.,
      RA = If.you.have.worked.with.a.Regional.Association..please.indicate.which.one.s..,
      erddap = Has.the.dataset.been.loaded.into.ERDDAP.
    ) %>%  # trim whitespace on edges
    mutate(across(where(is.character), trimws))
 
}
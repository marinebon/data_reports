library("dplyr")
library("here")
getCleanedData <- function(){
  data <- read.csv(here("data/MBON dataset registration (Responses) - Form Responses 1.csv"))
  
  data <- data %>%
    rename(  # shorten column names
      mbon.project = Which.MBON.project.is.this.dataset.associated.with.,
      RA = If.you.have.worked.with.a.Regional.Association..please.indicate.which.one.s..,
      erddap = Has.the.dataset.been.loaded.into.ERDDAP.,
      obis = Has.the.dataset.been.submitted.to.OBIS.,
      ncei = Has.the.dataset.been.archived.at.NCEI.,
      web.link = Are.the.data.accessible.via.the.web.
    ) %>%  # trim whitespace on edges
    mutate(across(where(is.character), trimws))
 
  return(data)
}
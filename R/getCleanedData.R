library("dplyr")
library("here")
getCleanedData <- function(){
  data <- read.csv(here("data/MBON dataset registration (Responses) - Form Responses 1.csv"))
  
  data <- data %>%
    rename(  # shorten column names
      mbon.project = Which.MBON.project.is.this.dataset.associated.with.,
      RA = If.you.have.worked.with.a.Regional.Association..please.indicate.which.one.s..,
      
      erddap = Has.the.dataset.been.loaded.into.ERDDAP.,
      erddap_link = If.yes.to.above..please.include.appropriate.ERDDAP.link.s..here.,

      obis = Has.the.dataset.been.submitted.to.OBIS.,
      obis_link = If.yes.to.above..please.include.appropriate.OBIS.link.s..here.,

      ncei = Has.the.dataset.been.archived.at.NCEI.,
      ncei_link = If.yes.to.above..please.include.appropriate.NCEI.link.s..here.,
      
      web = Are.the.data.accessible.via.the.web.,
      web_link = If.yes.to.above..please.include.appropriate.link.s..here.,
      
      code = Are.there.scripts.or.code.used.to.process.the.data.,
      code_link = If.yes.to.above..and.the.code.is.available..please.include.appropriate.link.s..here.
    ) %>%  # trim whitespace on edges
    mutate(across(where(is.character), trimws))
 
  return(data)
}
bibfolder <- "C:/Users/ubcde/OneDrive - The Ottawa Hospital/academicpage/youyang_academicpage/content/publication/journal-article"
bibfolder <- "~/Library/CloudStorage/OneDrive-TheOttawaHospital/academicpage/youyang_academicpage/content/publication/journal-article"

setwd(bibfolder)
library(bib2academic)
bib2acad(
  paste0(
    getwd(),
    "/cite.bib"),
  copybib = TRUE, abstract = FALSE, overwrite = TRUE)

bibFiles <- list.files(paste0(getwd(),"/my-bib-folder"), full.names = TRUE)
mdFiles <- list.files(paste0(getwd(),"/my-md-folder"), full.names = TRUE)
file.copy(from = bibFiles, to = getwd())
file.copy(from = mdFiles, to = getwd())
unlink(paste0(getwd(),"/my-bib-folder"), recursive = TRUE, force = TRUE)
unlink(paste0(getwd(),"/my-md-folder"), recursive = TRUE, force = TRUE)


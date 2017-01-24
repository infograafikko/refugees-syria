library(tidyverse)

htmllist <- NULL

for (i in 1:nrow(refugeedata)) {
  country <- refugeedata$Region[i]
  code <- data_frame(paste0("<option value='",country,"'>",country,"</option>"))
  htmllist <- rbind(htmllist,code)
}

write_csv(htmllist, "~/Documents/D3js/Refugees/data/htmllist.csv")

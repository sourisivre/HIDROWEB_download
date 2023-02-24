# SOURISIVRE - www.github.com/sourisivre/HIDROWEB_download
# Download Rain Gauge Data from HIDROWEB
# fev.2023

library(httr)

# INPUT: you must edit this manually
# Here goes the list of rain gauges you want to download time series
# Further, you can implement a method to read a list from a txt file if the total amount
# of rain gauges is big enough
rgList <- c(639056,638070,639034,639074,638013,638067,639079,639011,638007,639036,
            639066,639028,638000,638056,638120,638091,639070,639032,639087,639023)

type <- c("2")  #1-mdb (Hidro.exe) 2-txt 3-csv

urlBase <- "https://www.snirh.gov.br/hidroweb/rest/api/documento/convencionais?"

# LOOP FOR DOWNLOAD
for (i in 1:length(rgList)){
  #I didn't test for type 1 stations
  if(type==1){
    url <- paste(urlBase,"tipo=1&documentos=",rgList[i],sep="")
  }
  
  if(type==2){
    url <- paste(urlBase,"tipo=2&documentos=",rgList[i],sep="")
  }
            
  if(type==3){
    url <- paste(urlBase,"tipo=2&documentos=",rgList[i],sep="")
  }
  
  # Here is a suggestion of delivery folder in root, you can edit the path by yourself
  pathFile <- paste("C:/Inventario/","Medicoes_",rgList[i],".zip",sep="")

  print(paste("Trying:",url))
  r <- GET(url,write_disk(pathFile, overwrite = TRUE))
  print(paste("Completed:",i,"/",length(rgList),pathFile))
  
  #TODO: REMOVE - For debugging purposes
  #print(url)
  #print(pathFile)
}

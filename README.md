# 📥 HIDROWEB_download
Download time series in Hidro.exe format (database) of multiple rain gauges or stations

Please check official [HIDROWEB website](https://www.snirh.gov.br/hidroweb/apresentacao) for further informations.

## How it works

* Code is pretty straigthforward. The key is to manipulate the URL address to make it able to link to download file through Hidroweb interface.

* In new Hidroweb format, the URL must be something like this `https://www.snirh.gov.br/hidroweb/rest/api/documento/convencionais?tipo=2&documentos=639021`

* Where `tipo=2` refers to the kind of station (1-fluviometric or 2-pluviometric) and `documentos=639021` refers to the station code.

* So, if you have a list of station codes, you can perform a loop via programming language (here in R) to download as many time series as the amount of stations.

* Note that, if some of stations in the list have no data, so you will get an empty/null zip file.

## Important

1. Download format is `.zip`, so the zipped file is a database (`.mdb`) in format of _[Hidro.exe](https://www.snirh.gov.br/hidroweb/download)_ software.
2. I was not able, until now, to understand how to ask inside the URL for website respond with a `.txt` or `.csv` format, besides both of them are avaiable manually.

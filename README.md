# 📥 HIDROWEB_download
Download time series in multiple formats (database, text file or csv) of multiple rain gauges or stations. I built it in R, but it is easy to implement in any other programming language.

Please check official [HIDROWEB website](https://www.snirh.gov.br/hidroweb/apresentacao) for further informations.

## How it works

* Code is pretty straigthforward. The key is to manipulate the URL address to make it able to link to download file through Hidroweb interface.

* In new Hidroweb format, the URL must be something like this `https://www.snirh.gov.br/hidroweb/rest/api/documento/convencionais?tipo=2&documentos=639021`

* Where `tipo=2` refers to the format of data (1 for `mdb`, 2 for`txt` and 3 for`csv` formats) and `documentos=639021` refers to the station code.

* So, if you have a list of station codes, you can perform a loop via programming language (here in R) to download as many time series as the amount of stations.

* Note that, if some of stations in the list have no data, so you will get an empty/null zip file.

## Important

1. Download format is `.zip`, so the zipped file is or a database (`.mdb`) in format of _[Hidro.exe](https://www.snirh.gov.br/hidroweb/download)_ software, or a `txt`, or a `csv` file.
2. Some colleages have tried to download the entire database from Hidroweb, but they were blocked by a ReCaptcha authentication. In my case, I used this code to download time series of 86 rain gauges without any trouble with ReCaptcha.

## UPDATE
* 2025-02 ANA download have changed. Now you need to make a login and get a password to download data. They have provided a new API, so this code may be deprecated.

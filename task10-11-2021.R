library(tidyverse) 
library(httr)
library(jsonlite)
library(purrr)
#username
username <- 'HuzaifahZia'

#api link
url_GIT <- 'https://api.github.com/'

#constructing API request
repos <- GET(url= paste0(url_GIT,'users/',username,'/repos'))

##cookie names
names(repos)

##checking server connection 2xx show successfull 4xx shows server error
status_code(repos)

##storing repos to data
data<-content(repos)

head(data)
?sample
??seed

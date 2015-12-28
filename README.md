---
title: "README"
author: "Helena Tuompo"
date: "December 27, 2015"
output: html_document
---
CWUR 2015 has various data from 1000 universities. Quality of education is one and investigated here by examining the distribution of the data with a summary.Three datafiles are included with datafile.You may simulate data by changing number of unisversities.
```{r}
#global.R
gdata<- read.csv("C:/Documents/GitHub/New folder/Rank3.csv", header=TRUE,dec=",") #from cwur.org/2015.
# Quality of Education is column 5.  
ggdata =gdata[,5] 
#server.R and ui.R
# Generate a histogram and Q-Q plot of the data:
par(mfrow=c(1,2)); hist(we); qqnorm(we);qqline(data, col = 2,lwd=2,lty=2)
```


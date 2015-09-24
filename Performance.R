## PowerCenter Performance
## 2015-02-20 bankbintje
## Build and tested on 
# R version 3.1.2 
# R Studio Version 0.98.1062   
# Mac (x86_64-apple-darwin13.1.0)

read_pc <- function () {
        options(warn=-1)           
        
        setwd("/Users/makispoulianidis/Business Intelligence/Datasets/PowerCenter")
        
        
        pc_log <- read.table("DWH_SESLOG_2015-02-20T13_51_22.txt", header = TRUE, sep = ";")

        
library(dplyr)
dwd_ac<-dplyr::filter(pc_log, MAPPING_NAME == "CDC_DWD_AC")

dwd_ac<-dplyr::select(dwd_ac,SUBJECT_AREA,MAPPING_NAME,SUCCESSFUL_ROWS,SUCCESSFUL_SOURCE_ROWS,ACTUAL_START,SESSION_TIMESTAMP)


}


MAPPING_NAME,SUCCESSFUL_ROWS,SUCCESSFUL_SOURCE_ROWS,ACTUAL_START,SESSION_TIMESTAMP
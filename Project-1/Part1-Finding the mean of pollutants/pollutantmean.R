pollutantmean <- function(directory,pollutant,id=1:332){
              
              library(stringr)
              s <- 0
              r <- 0
              for(i in id){
              	num <- str_pad(i, 3, pad = "0")
              	file=paste(num,".csv",sep='')
                  f_path <- file.path("C:","Users","jibin jose","Desktop","coursera",directory,file)
              	data <- read.csv(f_path)
                  d <- data[pollutant]
                  if(!all(is.na(d))){
              	d_pol<- na.omit(d)
              	s <- sum(d_pol)+ s
                  r <- nrow(d_pol) +r
                }

              }
              mean_data <- s/r
              print(mean_data)
              }

              
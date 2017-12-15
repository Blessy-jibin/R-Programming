complete <- function(directory,id=1:332){
              
              library(stringr)
              mx <- matrix(ncol=2,nrow=length(id))
              names(mx) <- c("file","nobs")
              fname=character()
              nobn=numeric()
  		  
              for(i in id){
              	num <- str_pad(i, 3, pad = "0")
              	file=paste(num,".csv",sep='')
                  f_path <- file.path("C:","Users","jibin jose","Desktop","coursera",directory,file)
              	data <- read.csv(f_path)
              	d_c <- na.omit(data)
                  noc <- nrow(d_c)
                  fname <- append(fname,file)
                  nobn <- append(nobn,noc)
                  #mx[i,] <- c(file,noc)
	   }
              data.frame(fname,nobn)
     }
                  

corr <- function(directory,threshold=0){ 
              library(stringr)
              c_r <- numeric() 
              for(i in 1:323){
              	num <- str_pad(i, 3, pad = "0")
              	file=paste(num,".csv",sep='')
                  f_path <- file.path("C:","Users","jibin jose","Desktop","coursera",directory,file)
              	data <- read.csv(f_path)
              	d_c <- na.omit(data)
                  n <- nrow(d_c)
                  if(n>threshold) {
                      cr <- cor(d_c["sulfate"],d_c["nitrate"])
                      c_r <- append(c_r, cr)
                  }                
		 }
             print(c_r)
}

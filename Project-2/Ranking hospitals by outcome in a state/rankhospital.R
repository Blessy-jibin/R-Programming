rankhospital <- function(state,outcome,num="best"){
    data <- read.csv( "outcome-of-care-measures.csv" ,colClasses="character")
    
    if(outcome=="heart attack"){
         n <- 11
        }
    else if(outcome=="heart failure"){
        n <- 17 
       }
    else if(outcome=="pneumonia"){
        n <- 23
       } 
    
    a1 <- split(data[,c(2,n)],data$State) #splitting the outcome data with state
                                 
    a2 <- a1[[state]] #Selecting dataframe with argument state
    a2[,2] <- as.numeric(a2[,2]) #changing the second col to numeric
    a2 <- na.omit(a2)          #omitting na values
    a3 <- a2[order(a2[2],a2[1]),]  #Names of hospital with minimum value which is a list
    if(!is.numeric(num)){
        if(num =="best"){
            n1 <- 1
          }  
        if(num =="worst"){
           n1 <- nrow(a3)
         }
       }
    else{
        n1 <- num
      }
     print(n1)
     a3[n1,1]
}
                                  
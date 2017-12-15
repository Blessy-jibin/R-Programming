best <- function(state,outcome,num){
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
    a2 <- na.omit(a2) #omitting na values
    m <- min(a2[,2])                 
    a3 <- subset(a2,a2[2]==m)[,1] #Names of hospital with minimum value which is a list
    sort(a3)
    a3[1]    

  }                              
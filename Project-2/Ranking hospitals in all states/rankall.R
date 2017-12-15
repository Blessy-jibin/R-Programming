rankall <- function(outcome,num="best"){
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
    hospital=character()
    state=character()
    a1 <- split(data[,c(2,7,n)],data$State) #splitting the outcome data with state
     for (each in sort(unique(data[,7]))){
        sta <- each                      
        a2 <- a1[[sta]] #Selecting dataframe with argument state
        a2[,3] <- as.numeric(a2[,3]) #changing the second col to numeric
        a2 <- na.omit(a2)          #omitting na values
        a3 <- a2[order(a2[3],a2[1]),]  #Names of hospital with minimum value which is a list
        
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
     
    a4 <- a3[n1,1]
    
    hospital <- append(hospital,a4)
    state <- append(state,sta)
     }
  a5 <-data.frame(hospital,state)
  a5
    }       
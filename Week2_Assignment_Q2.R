complete <- function(directory, id = 1:332) {
  path <- paste0(getwd(),"/", directory)
  data <- data.frame()
  for (i in id) {
    if (i < 10) {
      dat <- read.csv(paste(path,"/00", as.character(i),".csv", sep = ""), 
                      as.is = T, 
                      header = T)
      
    }
    else if (i < 100) {
      dat <- read.csv(paste(path,"/0", as.character(i),".csv", sep = ""), 
                      as.is = T, 
                      header = T)
      
    }
    else {
      dat <- read.csv(paste(path,"/", as.character(i),".csv", sep = ""), 
                      as.is = T, 
                      header = T)
      
    }
    nobs <- sum(complete.cases(dat))
    data9 <- data.frame(i, nobs)
    data <- rbind(data,data9)
    
  }
  return(data)
}
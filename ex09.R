#Biocomputing Exercise 09
#Nolan Downey

#These first four lines are for testing purposes
#The function is written after these four lines
#I also wrote a short function to calculate the standard deviation value
dir <- readline(prompt = "Please state the directory you would like to analyze: ")

setwd(dir)

files <- c(list.files(dir))

column <- realdline(prompt = "Which column would you like to analyze? ")


stdDEV <- function(dir,files,column){
  for (j in 1:length(files)) {
    values <- read.csv(files[j])
  }
  
  if(nrow(values) < 50){
    warning("Less than 50 data points in file.")
    choice <- readline("Would you like to continue? Y/N")
    if (choice == "N") {
      quit()
    else if(choice == "Y")
      next()
    }
  }
  
  answr <- c()
  coff <- (paste("data", "$", column, sep = ""))
            
  for (x in 1:length(files)) {
    answr[x] <- sd.p(coff)
  }
  
  return(answr)
}

sd.p <- function(x) {
  sd(x)*sqrt((length(x)-1)/length(x))
}
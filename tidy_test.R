# iris test.R
library(ggplot2)
library(rjson)
#' Show iris data as JSON and filter
#' @param spec
#' @get /data
function(spec){
  myData <- iris
  
  if(!missing(spec)){
    myData <- dplyr::filter(myData, Species == spec)
      }
  
  return(myData)
  
  }


#' Plot out data from the iris dataset
#' @param spec If provided, filter the data to only this species (e.g. 'setosa')
#' @get /plot
#' @png
function(spec){
  myData <- iris
  title <- "All Species"
  
  # Filter if the species was specified
  if (!missing(spec)){
    title <- paste0("Only the '", spec, "' Species")
    myData <- dplyr::filter(myData, Species == spec)
  }
  
 myplot<- ggplot(myData, aes(x = Sepal.Length, y = Petal.Length)) +
      geom_point()
 
 print(myplot)
 
}

## for making api live run
# pr <- plumber::plumb("tidy_test.R")
#

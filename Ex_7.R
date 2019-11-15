##Exercise 7##

#loading iris.csv to iris
iris<-read.csv("iris.csv")

#Function to return odd rows in a file x
oddRows<-function(x){
  rowstemp<-nrow(x)
  for (i in 1:as.numeric(rowstemp)) {
    if(i%%2==1) print(x[i,])
  }
}
#using funtion oddRows on iris
oddRows(iris)


##Functions for Ex_06
#Function to return number of observations for a given species in a dataset
numSpecies<-function(x,taxa){
  tempSpecies<-x[x$Species=="taxa",]
  return(dim(tempSpecies))
}
#Usage: numSpecies(x=object,taxa=Species of interest)
numSpecies(iris,"setosa")

#Function to return flowers with Sepal.Width greater than a specfied size
sepalWidth<-function(x,width){
  tempwidth<-x[x$Sepal.Width>width,]
  return(tempwidth)
}
#Usage: sepalWidth(x=object,width=width greater than)
sepalWidth(iris,3.5)

#data for a species to a .csv with the specified file name
speciesCSV<-function(x,taxa,name.csv){
  temp<-x[x$Species==taxa,]
  write.csv(temp,file = "name.csv")
}
#Usage: speciesCSV(x=object,taxa=species,name.csv=nameofnewcsv)
speciesCSV(iris,"setosa","setosa.csv")

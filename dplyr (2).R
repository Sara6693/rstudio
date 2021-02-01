#To install anything from github it is necessary to have devtools package installed.
#install.packages(devtools) 
#library(devtools) # to use any package it is neccessary to load it first.
# devtools::install_github("tidyverse/dplyr") # command to install dplyr from github
#To use any packaage the first is to install the package
# The easiest way to get dplyr is to install the whole tidyverse:
#install.packages("tidyverse")
# Alternatively, install just dplyr:
install.packages("dplyr")
library(dplyr)
#To create a dataframe first step is to create columns
Name <- c("Ali" , "Usman" ,"Abubakar", "Anum", "Ayesha", "Marium", "Jamil") # A column named as Name is created with values "Ali" , "Usman" ,"Abubakar", "Anum" , "Ayesha", "Marium", "Jamil"
Age <- c(24, 23, 21, 22, 23, 20, 25) # A column named as Age is created with values 24, 23, 21 , 22 , 23, 20, 25
Education <- c("MS-18" ,"BA-14" ,"FSC-12" ,"BS-16", "MA-16" ,"Matric-10" ,"BS-16" ) # A column named as  Education  is created with value "MS-18" ,"BA-14" ,"FSC-12" ,"BS-16" , "MA-16" ,"Matric-10" ,"BS-16"
Hair_color <- c("blond", "black", "brown", "red", "black", "brown", "red")# A column named as  Hair_color is created with values "blond", "black", "brown", "red", "black", "brown", "red"
Eye_color <- c("blue", "black", "brown", "blue", "black", "brown", "green") # A column named as  Eye_color is created with values "blue", "black", "brown", "blue", "black", "brown", "green"
Gender <- c("male","male", "male", "female", "female", "female", "male" )# A column named as  Sex is created with values "male","male", "male", "female", "female", "female", "male" 
#To create Data Frame, data.frame function is used 
StudentsInfo <- data.frame(Name, Age, Education, Hair_color, Eye_color , Gender)  # A data frame with name StudentsInfo is created which contain six columns Name, Age, Education , Hair_color, Eye_color , Sex
#**********************
#***********************
#************************* #Function of dplyr
#*
#* 1st- Filter
#* This function  keep those rows of data frame that matches criteria
FilteredData <- filter(StudentsInfo, Age== 23) #It will keep only those rows in which Age column contains 23 value.
FilteredData2 <- filter(StudentsInfo, Eye_color== "brown") #It will keep only those rows in whose Eye_color column has brown value.
#*******************************
#*2nd Select
#* This function  allows to view only those column are actually of interest to you. 
SelectedData <- select(StudentsInfo, Name, Age) #name and Age column of StudentInfo dataframe will be storedt
SelectedData <- select(StudentsInfo, ends_with("color")) #columns of StudentInfo dataframe whose name end with color
#**********************
#*3rd  Mutate
#*This function  allows to Add new columns to data frame
MutatedData <- mutate(StudentsInfo , Age2 = Age / 100) #A new Column name  Age2 will be created and it will take values from Age column and divide it to 10.
MutatedData2 <- mutate(StudentsInfo , City = c("LHR", "FSD","RWP","ISB","LHR","MZD","KAR")) # A new column named City is created  and its values are "LHR", "FSD","RWP","ISB","LHR","MZD","KAR".
#**********************
#*3rd Arrange
#*This function  allows to Add new columns to data frame
ArrangedData <- arrange(StudentsInfo ,Age) #it will arrange the rows of data frame in ascending order on the basis of Age column.
ArrangedData2 <- arrange(StudentsInfo , desc(Age)) #it will arrange the rows of data frame in descending order on the basis of Age column.
#**********************
#*4th Summarise
#*This function is used to summarize the column values to a single value.
SummarisedData <- summarise(StudentsInfo, totalAge = sum(Age)) #It will give the sum of all the values of Age
#**********************
#* 5th Group_by 
#* This function creates grouped copy of data frame
color = c("blue","black","blue","blue","black") # A column named as  color is created with values "blue","black","blue","blue","black"
colorvalue = c(1,2,3,4,5) # A column named as  colorvalue is created with values 1,2,3,4,5
df <- data.frame(color , colorvalue) # A data frame with name df is created which contain two columns color, colorvalue 
GroupedData <- group_by(StudentsInfo, Gender) #a dataframe will be created which will be grouped on the basis  of Gender column
SummarizeGroupedData  <-  summarise(GroupedData) # A data frame will be created in which column values will indicate the formed groups

#reading the csv file named "stores"
library(dplyr)
library(readr)
stores<-read_csv("stores.csv")
#trasmute columns
stores<-stores %>%
  transmute(product_id = product_id,
            sales_tax = price * 0.075,
            profit = price - cost_to_manufacture) #also removes the existing columns
col_names <- colnames(stores)
col_names

stores

#data cleaning
#tidy data means that 1) each variable is contained as a separate column 
#2) each row is a separate observation
grocery_1 <- read_csv("grocery_1.csv")
nrow(grocery_1) #number of rows in a dataframe

# R program to illustrate dataframe 
# A vector which is a character vector
Name = c("Amiya", "Raj", "Asish") 
# A vector which is a character vector
Language = c("R", "Python", "Java")
# A vector which is a numeric vector
Age = c(22, 25, 45)
df <- data.frame(Name,Language,Age)
df_csv <- write_csv(df,"df.csv") #saving it into a csv file
#acceesing the values in a dataframe
df[1:2,1:3]
#creating a subset of a dataframe
df_new <- subset(df, df[ ,3] < 25)
df_new

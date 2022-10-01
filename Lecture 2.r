#loading the packages
library(dplyr) 
library(readr) #read_csv and write_csv functions
#loading the csv file into a dataframe
whiskies=read_csv("whiskies.csv")
head(whiskies)

whiskies_manipulated <- whiskies %>% 
  select(-Distillery,-Tobacco,-Latitude) %>% 
  filter(Sweetness != 2) %>% 
  arrange(desc(Body))
head(whiskies_manipulated) #returns the first six rows of a data frame

#creating a datafram of a cupcake store
name<-c("Red Velvet Cake","Birthday Cake","Carrot Cake")
cake_flavor<-c("chocolate","vanilla","carrot")
frosting_flavor<-c("cream cheese","vanilla","cream cheese")
topping<-c("strawberries","rainbow sprinkles","almonds")
df<-data.frame(name,cake_flavor,frosting_flavor,topping)

#saving the data frame as a csv file
cupcake<-write_csv(df,"cupcake.csv")
head(df,2) #the additional argument determines the number of rows to be displayed

cupcakes <- read_csv("cupcake.csv")
cupcakes
duplicates <- duplicated(cupcakes)
duplicate_counts <- duplicates %>%
    table()
duplicate_counts #meaning one row is duplicated

#table function in R
vec = c(2, 4, 3, 1, 2, 3, 2, 1, 4, 2)
table_1 <- table(vec)
names <- list(unique(vec))
names



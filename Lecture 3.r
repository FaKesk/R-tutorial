library(readr)
library(dplyr)
whiskies<-read_csv("whiskies.csv")
#piping
whiskies %>% 
    head() #equivalent to head() function with the argument whiskies

#selecting columns
customers<-read_csv("customers.csv")
#using piping
customers_age<-customers %>%
    select(age)
customers_age

#using the select() function only
age_gender<-select(customers,age,gender)
age_gender

#excluding columns
age_removed<-customers %>%
    select(-age)
age_removed

#filtering rows with logic
whiskies_filtered<-whiskies %>%
    filter(Sweetness==3)
for (sweetness in whiskies_filtered["Sweetness"]) {
    print(sweetness)
}
#not statement
whiskies_not_3<-whiskies %>%
    filter(!(Sweetness==3))
whiskies_not_3
#or statement
whiskies_or<-whiskies %>%
    filter(Floral==2|Malty==2)
whiskies_or


whiskies<-whiskies %>%
    select(-Postcode,-Tobacco) %>%
    filter(Floral==3,Body==1) %>%
    arrange(desc(Sweetness))
head(whiskies)

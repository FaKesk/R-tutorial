#class() gives the data type of the value
class(2); class("Fatma"); class(TRUE); class(NA)

#creating a vector 
phone_number<-c(537,590,4064)
print(phone_number[1]) #in R indexing starts at 1
phone_number[1];phone_number[2];phone_number[3]; length(phone_number)
typeof(phone_number)

message <- "I change based on a condition."
if (TRUE) {
  message<-"I execute this when true!"
} else if (FALSE) {
  message<-"I execute this when false!"
}
print(message)

essage <- 'Should I pack an umbrella?'
weather <- 'cloudy'
high_chance_of_rain <- TRUE

if (weather=="cloudy" & high_chance_of_rain==TRUE) {
  message="Pack umbrella!"
} else {
  message="No need for umbrella!"
}
print(message)

#calling a function
pi_number=3.14
round_up=ceiling(pi_number)
round_down=floor(pi_number)
print(round_down)

#printing out the unique values in a vector
my_vector=c(1,1,2,3,3)
for (var in unique(my_vector)) {
    print(var)
}

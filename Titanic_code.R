#Load the data

Titanic <- read.csv("titanic_original.csv")

#Age

average <- mean(Titanic$age, na.rm = TRUE)
Titanic <- Titanic %>% mutate(age=ifelse(is.na(age), average, age))

#Lifeboat

#Titanic <- Titanic %>% mutate(boat=ifelse(boat=="", ("None"), boat))  #(??)

Titanic$boat[Titanic$boat==""] <- ("NA")

#Cabin
Titanic$cabin[Titanic$cabin==""] <- ("NA")
Titanic <- Titanic %>% mutate(has_cabin_number=ifelse(is.na(cabin),0,1))



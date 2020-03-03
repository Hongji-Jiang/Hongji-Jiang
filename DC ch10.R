##DC exercise
##10.1
##1:summary function 2:Data verb 3:Data verb 4:Reduction Function 5:Data verb 6:summary function 7:Data verb 8:summary function

##10.2
##1:mutate, 2:arrange(desc()), 3:filter, 4:select, 5:group_by, (arrange)

##10.3
##1:nrow(), 2:names(), 3:help(), 4:library(), 5:group_by()

##10.4
library(DataComputing)
library(ggplot2)
DataComputing::BabyNames
View(BabyNames)
##A
BabyNames %>%
  arrange(sex,count)

##B
BabyNames %>%
  filter(sex=="F")

##C
BabyNames %>%
  filter(year < 2010,year > 1917,sex=="F")%>%
  summarise(count = n())

##D
BabyNames %>%
  summarise(total = sum(count))

##E
BabyNames %>%
  select(name,count)


##10.5
DataComputing::Minneapolis2013
##a

Minneapolis2013%>%
  filter(First == Second)%>%
  summarise(total = n())

##b
Minneapolis2013%>%
  filter(First == Second)%>%
  group_by(First,Second)%>%
  summarise(total = n())%>%
  arrange(desc(total))%>%
  head(3)

##c
View(Minneapolis2013)
Minneapolis2013%>%
  group_by(First,Second)%>%
  filter(First == "OLE SAVIOR")%>%
  summarise(total = n())%>%
  arrange(desc(total))%>%
  head(3)

##10.6
data("diamonds")
View(diamonds)
##a
diamonds %>% 
  select(color,carat) %>% 
  mutate(meancarat = mean(carat) ) %>% 
  arrange(desc( meancarat )) %>% 
  head( 1 )


##b
diamonds %>%  
  group_by(clarity)%>%
  summarise(tablepercarat=mean(table/carat))%>%
  arrange(desc( tablepercarat )) %>%
  head( 1 )


##10.7


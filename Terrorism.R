library(tidyverse)
library(ggplot2)
df<- read.csv("C:/Users/family/Desktop/globalterrorismdb_0718dist.csv")
#Selecting the required columns
df_new <- select(df, 'eventid','iyear','imonth','iday','country_txt','region_txt','provstate',
                 'city','multiple','success','suicide','attacktype1_txt','targsubtype1_txt',
                 'target1','gname','motive','individual','nperps','weaptype1_txt',
                 'weapsubtype1_txt','weapdetail','nkill','ransom','ransomamt','ransompaid')
#Renaming the column names
colnames(df_new)<- c('id', 'year', 'month', 'day', 'country', 'region', 'state', 'city', 
                     'multiple_attacks', 'successful_attacks', 'suicide', 'type_of_attack', 
                     'casualty', 'target', 'group_name', 'motive', 'individual', 
                     'number_of_perpetrator', 'weapon', 'weapon_category', 'weapon_detail', 
                     'people_killed','ransom','ransom_amount','ransom_paid')

#Checking for duplicated values and na values and converting na values to 0.
sum(duplicated(df_new))
sum(is.na(df_new))
sum(df_new == 0)
df_new[is.na(df_new)] <- 0
#Exporting to csv file
write.csv(df_new,'C:/Users/family/Desktop/Terrorism.csv')









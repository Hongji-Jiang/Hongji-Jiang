library(tidyverse)
library(mosaic)
library(mosaicData)
data("HELPrct")
data.frame(HELPrct)

##1
##Eligible subjects were adults, who spoke Spanish or English, reported alcohol, heroin or cocaine as their first or second drug of choice, resided in proximity to the primary care clinic to which they would be referred or were homeless. Patients with established primary care relationships they planned to continue, significant dementia, specific plans to leave the Boston area that would prevent research participation, failure to provide contact information for tracking purposes, or pregnancy were excluded.

Subjects were interviewed at baseline during their detoxification stay and follow-up interviews were undertaken every 6 months for 2 years. A variety of continuous, count, discrete, and survival time predictors and outcomes were collected at each of these five occasions.

HELPrct %>% summarise(ageCombinedTime = sum(dayslink, na.rm=TRUE),meantim = mean(daysanysub , na.rm=TRUE))

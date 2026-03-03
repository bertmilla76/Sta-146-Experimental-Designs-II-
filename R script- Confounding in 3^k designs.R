library(readxl)
library(tidyverse)
bottles <- read_excel("three-to-the-k factorial.xlsx", sheet = 2)
head(bottles)

bottles <- bottles %>% 
  mutate(Worker = factor(Worker),
         Bottle = factor(Bottle),
         Shelf = factor(Shelf),
         Block = factor(Block))



out1 <- summary(aov(Time ~ Worker*Bottle*Shelf,
            data = bottles))

out1[[1]][["Sum Sq"]][7]
SS_ABC <- out1[[1]][["Sum Sq"]][7]
SS_ABC



out1


out2 <- summary(aov(Time ~ Block + Worker*Bottle*Shelf,
                    data = bottles))
out2


SS_ABC1 <- out2[[1]][["Sum Sq"]][8]
SS_ABC1

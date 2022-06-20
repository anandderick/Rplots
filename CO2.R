
library(tidyverse)
?CO2
names(CO2)
View(CO2)
CO2$piss = as.character(CO2$Plant)
CO2$piss2= as.character(CO2$Type)
CO2 %>% 
  ggplot(aes(conc,uptake, color = Treatment))+
  geom_point()+
  geom_smooth(method = "lm", se = FALSE)+
  facet_grid(rows = vars(piss2),cols = vars(piss))+ theme_minimal()+
  theme(axis.text.x = element_text(angle = 90),text=element_text(size=10,family="Verdana"))+
  labs(x = "Concentration of ambient carbon dioxide concentrations",
        y ="Rate of uptake of carbon dioxide",
        title = "Cold tolerance of the grass species Echinochloa crus-galli",
          subtitle = "The CO2 uptake of six plants from Quebec and six plants from Mississippi was measured at several levels of ambient CO2 concentration. Half the plants of each type were chilled overnight before the experiment was conducted.")




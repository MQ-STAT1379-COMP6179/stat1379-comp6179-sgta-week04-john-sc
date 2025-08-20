library(babynames)
library(tidyverse)
glimpse(babynames)
head(babynames)
select(babynames,name)
select(babynames, name, sex)

babynames |>
  filter(name == "Thomas", sex == "M") |>
  summarise(
    total = sum(n), 
    max = max(n), 
    mean = mean(n),
    years = n_distinct(year)
  )


library(tidyr)

# Look at different representations of the same data
table1
table2  
table3
table4a  # Cases
table4b  # Population

table2 |>
  pivot_wider(
    names_from = type,           # Column to get names from
    values_from = count          # Column to get values from
  )
    

table3 |>
  separate_wider_delim(cols = rate, delim = "/", names = c("cases", "n")) |>
  head(5)
  
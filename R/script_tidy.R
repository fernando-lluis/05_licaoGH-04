
# carregando pacotes ------------------------------------------------------

library(tidyverse)
library(readr)
library(tibble)
library(tidyr)
library(dplyr)


# 1. Lendo os dados -------------------------------------------------------


notas_disciplina <- read.csv("dados/notas_disciplina.csv")

notas_disciplina %>% view()



# 2. escrevendo o dataset tidy --------------------------------------------

write_csv(notas_tidy, "dados/notas_tidy.csv")

# 3. pivotamento dos dados ---------------------------------------------------
 notas_tidy <- notas_disciplina %>%
   pivot_longer(
     !Curso,
     names_to = "ano",
     values_to = "notas"
   ) %>%
   rename(curso = Curso)

 notas_tidy

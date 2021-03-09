library(readxl)
Salud_reg <- read_excel("IDH.xlsx", sheet = "Salud_regional")
View(Salud_reg)


library(ggplot2)
library(bbplot)
library(scales)

Saludr_plot <- ggplot(Salud_reg, aes(x = Salud_reg$Año, y =Salud_reg$Salud, colour = Salud_reg$Region)) +
  geom_line(size = 1) +
  scale_fill_brewer(palette="Dark2") +
  bbc_style() +
  labs(title="Salud regional", subtitle = "1990-2019")+
  scale_x_continuous(breaks =  seq(1990,2020,5))
#Guardar plot y agregar fuente

finalise_plot(plot_name = Saludr_plot,source = "Fuente: Elaboración propia con datos del PNUD")

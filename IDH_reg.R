library(readxl)
IDH_reg <- read_excel("IDH.xlsx", sheet = "IDH_Regiones")
View(IDH_reg)

library(ggplot2)
library(bbplot)
library(scales)

IDHr_plot <- ggplot(IDH_reg, aes(x = IDH_reg$Año, y =IDH_reg$IDH, colour = IDH_reg$Region)) +
  geom_line(size = 1) +
  scale_fill_brewer(palette="Dark2") +
  bbc_style() +
  labs(title="IDH regional", subtitle = "1990-2019")+
scale_x_continuous(breaks =  seq(1990,2020,5))
#Guardar plot y agregar fuente

finalise_plot(plot_name = IDHr_plot,source = "Fuente: Elaboración propia con datos del PNUD")

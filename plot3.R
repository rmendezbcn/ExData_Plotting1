
library(data.table)
library(dplyr)
#reading in the data
plot_dataset <-  fread('subset_elec_power_consumption_df.csv')

# plot 3
plot(plot_dataset$sub_metering_1, type = 'l', pch = '', xaxt = 'n', ylab = 'Energy sub metering')
axis(1, at = c(1, length(plot_dataset$global_active_power)/2, length(plot_dataset$global_active_power)), lab=c("Thu","Fri", 'sat'))
lines(plot_dataset$sub_metering_2, col = 'red')
lines(plot_dataset$sub_metering_3, col = 'blue')

# copying the plot to a file device
dev.copy(png, file = 'plot3.png')
dev.off()


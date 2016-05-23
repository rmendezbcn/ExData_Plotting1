
library(data.table)
library(dplyr)
#reading in the data
plot_dataset <-  fread('subset_elec_power_consumption_df.csv')

# plot 4
par(mfrow = c(2,2))
plot(plot_dataset$global_active_power, type = 'l',  pch = '', xaxt = 'n', ylab = 'Global Active Power (kilowatts)', xlab = '')
axis(1, at = c(1, length(plot_dataset$global_active_power)/2, length(plot_dataset$global_active_power)), lab=c("Thu","Fri", 'sat'))
plot(plot_dataset$voltage, type = 'l', pch = '', xaxt = 'n', ylab = 'Voltage', xlab = 'datytime')
axis(1, at = c(1, length(plot_dataset$global_active_power)/2, length(plot_dataset$global_active_power)), lab=c("Thu","Fri", 'sat'))
plot(plot_dataset$sub_metering_1, type = 'l', pch = '', xaxt = 'n', ylab = 'Energy sub metering', xlab = '')
axis(1, at = c(1, length(plot_dataset$global_active_power)/2, length(plot_dataset$global_active_power)), lab=c("Thu","Fri", 'sat'))
lines(plot_dataset$sub_metering_2, col = 'red')
lines(plot_dataset$sub_metering_3, col = 'blue')
plot(plot_dataset$global_reactive_power, type = 'l', pch = '', xaxt = 'n', ylab = 'Global_reactive_power', xlab = 'daytime')
axis(1, at = c(1, length(plot_dataset$global_active_power)/2, length(plot_dataset$global_active_power)), lab=c("Thu","Fri", 'sat'))

# copying the plot to a file device
dev.copy(png, file = 'plot4.png')
dev.off()


par(mfrow= c(2,2), mar = c(4,4,2,1))

colnames(final_df)
with(final_df, plot(daytime, Global_active_power, type = 'l', xlab = '', ylab = 'Global Active Power'))
with(final_df, plot(daytime, Voltage, type = 'l', ylab = 'Voltage'))
with(final_df, {
    plot(daytime, Sub_metering_1, type= 'l', col = 'black',ylab = 'Energy sub metering', xlab = '')
    lines(daytime, Sub_metering_2, type = 'l', col = 'red')
    lines(daytime, Sub_metering_3, type = 'l', col = 'blue')
    legend('topright', pch = '_', col = c('black', 'red','blue'), legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
})
with(final_df, plot(daytime, Global_reactive_power, type = 'l'))

with(final_df, {
    plot(daytime, Sub_metering_1, type= 'l', col = 'black',ylab = 'Energy sub metering', xlab = '')
    lines(daytime, Sub_metering_2, type = 'l', col = 'red')
    lines(daytime, Sub_metering_3, type = 'l', col = 'blue')
    legend('topright', pch = '_', col = c('black', 'red','blue'), legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
})


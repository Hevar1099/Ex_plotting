final_df$daytime <- final_df$Date + final_df$Time
final_df$daytime



with(final_df, {
    plot(daytime, Global_active_power, type = 'l', ylab = 'Global Active Power (kilowatts)', xlab = '')
})




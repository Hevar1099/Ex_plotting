df <- read.table('~/Desktop/ExData_Plotting1/household_power_consumption.txt', header = T, sep = ';')
df
head(df)


colnames(df)
str(df)


library(lubridate)
df$Date <- dmy(df$Date)
df$Date
class(df$Date)
head(df)

library(tidyr)
library(dplyr)

final_df <- df %>%
    filter(Date %in% c("2007-02-01", "2007-02-02"))
final_df

df_char <- as.data.frame(lapply(final_df, as.character))

missing_values <- df_char == "?"

missing_values
table(missing_values)

# Fist graph 

final_df
class(final_df$Time)

final_df$Time <- hms(final_df$Time)

final_df$Global_active_power <- as.numeric(final_df$Global_active_power)

hist(final_df$Global_active_power, col = 'red', main = 'Global Active Power', 
    xlab = 'Global Active Power (kilowatts)')






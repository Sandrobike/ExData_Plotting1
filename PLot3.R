# Peer grade assigfnment Plot3

# to properly set the required data frame 'power_df' please run Plot1.R before 
# this script execution
# Note ! The weekdays reported on x axes on png files are in Italian since my computer is set for 
# italian language where (Thu)rsday = (Gio)vedì, (Fri)day = (Ven)erdì, (Sat)urday = (Sab)ato

## open a png device
png("plot3.png", width = 480, height = 480, units = "px", bg = "transparent")
## Plot3
with(power_df, plot(Time,Sub_metering_1, lty = 1, lwd= 1, xlab = "", type = "l",
                    ylab = "Energy sub metering"))
with(power_df, lines(Time, Sub_metering_2, col = "red"))
with(power_df, lines(Time, Sub_metering_3, col = "blue"))
with(power_df, legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
                      col = c("black","red","blue"), lty = 1))
dev.off()

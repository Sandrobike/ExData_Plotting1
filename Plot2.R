# Peer grade assigfnment Plot2

# to properly set the required data frame 'power_df' please run Plot1.R before 
# this script execution
# Note ! The weekdays reported on x axes on png files are in Italian since my computer is set for 
# italian language where (Thu)rsday = (Gio)vedì, (Fri)day = (Ven)erdì, (Sat)urday = (Sab)ato

## open a png device
png("plot2.png", width = 480, height = 480, units = "px", bg = "transparent")
## Plot2
with(power_df, plot(Time,Global_active_power, lty = 1, lwd= 1, xlab = "", type = "l",
                    ylab = "Global active power (kilowatts)"))

dev.off()

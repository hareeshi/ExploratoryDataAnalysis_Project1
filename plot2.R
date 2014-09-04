png (file="plot2.png")
c <- read.table("household_power_consumption.txt",header=TRUE,sep=";")
c$Date <- as.Date(c$Date,"%d/%m/%Y")
cv <- c[c$Date == "2007-02-01" | c$Date =="2007-02-02",]
cv$DateTime <- paste(cv$Date,cv$Time)
cv$DateTime <- strptime(cv$DateTime, "%Y-%m-%d %H:%M:%S")
with (cv, plot(DateTime,as.numeric(as.character(Global_active_power)),type="l",xlab="",ylab="Global Active Power(kilowatts)"))
dev.off()
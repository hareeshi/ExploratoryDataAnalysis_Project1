png (file="plot4.png")
c <- read.table("household_power_consumption.txt",header=TRUE,sep=";")
c$Date <- as.Date(c$Date,"%d/%m/%Y")
cv <- c[c$Date == "2007-02-01" | c$Date =="2007-02-02",]
cv$DateTime <- paste(cv$Date,cv$Time)
cv$DateTime <- strptime(cv$DateTime, "%Y-%m-%d %H:%M:%S")

par(mfcol = c(2,2))
with (cv,{
    plot(DateTime,as.numeric(as.character(Global_active_power)),type="l",xlab="",ylab="Global Active Power(kilowatts)")
    plot(DateTime,as.numeric(as.character(Sub_metering_1)), type="l",ylab="Energy Sub Metering",xlab="")
    points(DateTime,as.numeric(as.character(Sub_metering_2)), type="l",col="Red")
    points(DateTime,as.numeric(as.character(Sub_metering_3)), type="l",col="Blue")
    legend("topright",pch="--",col=c("black","blue","red"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    plot(DateTime,as.numeric(as.character(Voltage)),type="l",ylab="Voltage",xlab="datetime")
    plot(DateTime,as.numeric(as.character(Global_reactive_power)),type="l", xlab="datetime",ylab="Global_reactive_power")
    
})
dev.off()
png (file="plot1.png")
c <- read.table("household_power_consumption.txt",header=TRUE,sep=";")
c$Date <- as.Date(c$Date,"%d/%m/%Y")
cv <- c[c$Date == "2007-02-01" | c$Date =="2007-02-02",]
hist(as.numeric(as.character(cv$Global_active_power)),col="Red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()


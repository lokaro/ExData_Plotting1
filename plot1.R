#reading data
data <- read.table("../AS1/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
partdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#preparing and drawind
gap <- as.numeric(partdata$Global_active_power)
png("plot1.png", width=480, height=480)
hist(gap, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
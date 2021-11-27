#Deliverable 1

#Load dplyr package
library(dplyr)

#Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar)

#Determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar))

#Deliverable 2

#Import and read file as a table
suspension <- read.csv(file='Suspension_coil.csv',check.names=F,stringsAsFactors = F)

#Create a total_summary dataframe
#summarize_demo <- Suspension %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI)) 
total_summary <- suspension %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI), Num_Coil=n(), .groups = 'keep') 

#Create a lot summary
lot_summary <- suspension  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI), Num_Coil=n(), .groups = 'keep')

### BOX PLOT FOR ANALYSIS
##box plot: PSI Whole lot
#plt1 <- ggplot(mecha_coil,aes(y=PSI)) #import dataset into ggplot2
#plt1 + geom_boxplot() #add boxplot

##box plot: PSI each indicdiual Lot
#plt2 <- ggplot(mecha_coil,aes(x=Manufacturing_Lot,y=PSI)) 
##import dataset into ggplot2
#plt2 + geom_boxplot()

# Deliverable 3

#Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch using t-test
t.test(suspension$PSI,mu=1500)


#Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch per lot
lot1 <- subset(suspension, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
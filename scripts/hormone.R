#Day 3####

#Setting working directory - change the path to the folder where you have installed the project####
folder <- "~/RDM-LS"
setwd(folder)

#import the library ggplot2
library(ggplot2)

Hormone <- read.csv2("data/20201110-hormone.csv")
Hormone
names(Hormone)[3] <- "conc"

p2 <- ggplot(Hormone, aes(Drug,conc)) +
	          stat_summary(fun.y=mean,geom="bar") +
		              stat_summary(fun.data=mean_cl_normal,geom="errorbar",
					                                           width=0.25) + geom_point() +
  coord_flip()

p2

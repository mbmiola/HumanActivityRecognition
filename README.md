Course Project: Human Activity Recognition
==========================================

Introduction
------------
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 


About the dataset
-----------------
The original data was obtained from the [UCI University - Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), and represents the result of an experiment that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.

Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the scientists captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.


Prereqs
-------
  - [R tools 3.1](http://www.r-project.org/) or later installed
  - ```data.table``` package installed, with all its dependencies. Just start R tools and install it by using the following command:

  	```install.packages("data.table", dep = TRUE)```


How to run it
-------------
 - first of all you have to clone this [repo](https://github.com/mbmiola/HumanActivityRecognition) using Git

 	```git clone https://github.com/mbmiola/HumanActivityRecognition```

 - start R tools

 - set your working directory as the cloned repo, for example ```setwd("/home/myuser/HumanActivityRecognition")```

 - load the run_analysis.R script to start ```source("run_analysis.R")```


Output
------
 - by default, this R script saves the output into your working directory with the filename ```second_tidy.txt```

 - if you prefer you can view the output inside R tools using the command ```View(second_tidy)```

- more information about this dataset can be found [here](https://github.com/mbmiola/HumanActivityRecognition/blob/master/CodeBook.md)

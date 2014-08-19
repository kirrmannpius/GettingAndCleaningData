Code Book
=========

This document describes the structure of the data set `MeansBySubjectAndActivity.txt`.

The data set is based on data collected from the accelerometers from the Samsung Galaxy S
smartphone.
The original data set was downloaded from

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip    

We thank the authors for making the data available to the public via the Machine Learning Repositrory.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The material is used for personal training purposes only within the project of the course

[Getting and Cleaning Data](https://www.coursera.org/course/getdata)



Data transformation
-------------------
The original data have been transformed according to the instructions given in the project assignment.
Fore more information, we refer to the README.md of this repository. 
There are also some remarks in the R script `run_analysis.R`.

 
Structure of the data set
-------------------------
As mentioned above, the data set is a derivation of an original data set.
We tried to preserve the naming convention of that data set so that the reader can trace back
the source of the values in the maniplated data set.

* "subject" 
    * ID of a volunteer, range from 1 to 30                    

* "activity" 
    * 1            WALKING
    * 2   WALKING_UPSTAIRS
    * 3 WALKING_DOWNSTAIRS
    * 4            SITTING
    * 5           STANDING
    * 6             LAYING
      
Naming convention for the following variables
>    prefix t: time series     
>    prefix f: Fourier-transformed     
>    Acc: data from accelerometer     
>    Gyro: data from gyroscope     
>    mean(): mean value     
>    std(): standard deviation     
>    -X: X-direction     
>    -Y: Y-direction     
>    -Z: Z-direction     

Note: all values have been aggregated, i.e. mean() was applied (also for std()).     

             
* "tBodyAcc-mean()-X"
          
* "tBodyAcc-mean()-Y"  
         
* "tBodyAcc-mean()-Z"          
 
* "tBodyAcc-std()-X"         
  
* "tBodyAcc-std()-Y"            

* "tBodyAcc-std()-Z"            

* "tGravityAcc-mean()-X"       

* "tGravityAcc-mean()-Y"        

* "tGravityAcc-mean()-Z"        

* "tGravityAcc-std()-X"        

* "tGravityAcc-std()-Y"         

* "tGravityAcc-std()-Z"         

* "tBodyAccJerk-mean()-X"      

* "tBodyAccJerk-mean()-Y"       

* "tBodyAccJerk-mean()-Z"       

* "tBodyAccJerk-std()-X"       

* "tBodyAccJerk-std()-Y"        

* "tBodyAccJerk-std()-Z"        

* "tBodyGyro-mean()-X"         

* "tBodyGyro-mean()-Y"          

* "tBodyGyro-mean()-Z"          

* "tBodyGyro-std()-X"          

* "tBodyGyro-std()-Y"           

* "tBodyGyro-std()-Z"           

* "tBodyGyroJerk-mean()-X"     

* "tBodyGyroJerk-mean()-Y"      

* "tBodyGyroJerk-mean()-Z"      

* "tBodyGyroJerk-std()-X"      

* "tBodyGyroJerk-std()-Y"       

* "tBodyGyroJerk-std()-Z"       

* "tBodyAccMag-mean()"         

* "tBodyAccMag-std()"           

* "tGravityAccMag-mean()"       

* "tGravityAccMag-std()"       

* "tBodyAccJerkMag-mean()"      

* "tBodyAccJerkMag-std()"       

* "tBodyGyroMag-mean()"        

* "tBodyGyroMag-std()"          

* "tBodyGyroJerkMag-mean()"     

* "tBodyGyroJerkMag-std()"     

* "fBodyAcc-mean()-X"           

* "fBodyAcc-mean()-Y"           

* "fBodyAcc-mean()-Z"          

* "fBodyAcc-std()-X"            

* "fBodyAcc-std()-Y"            

* "fBodyAcc-std()-Z"           

* "fBodyAccJerk-mean()-X"       

* "fBodyAccJerk-mean()-Y"       

* "fBodyAccJerk-mean()-Z"      

* "fBodyAccJerk-std()-X"        

* "fBodyAccJerk-std()-Y"        

* "fBodyAccJerk-std()-Z"       

* "fBodyGyro-mean()-X"          

* "fBodyGyro-mean()-Y"          

* "fBodyGyro-mean()-Z"         

* "fBodyGyro-std()-X"           

* "fBodyGyro-std()-Y"           

* "fBodyGyro-std()-Z"          

* "fBodyAccMag-mean()"          

* "fBodyAccMag-std()"           

* "fBodyBodyAccJerkMag-mean()" 

* "fBodyBodyAccJerkMag-std()"   

* "fBodyBodyGyroMag-mean()"     

* "fBodyBodyGyroMag-std()"     

* "fBodyBodyGyroJerkMag-mean()" 

* "fBodyBodyGyroJerkMag-std()" 

 


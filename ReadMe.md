#ReadMe for Course Project

There are **three** files in this Repository:
 
1. run_analysis.R
2. Codebook.rmd
3. ReadMe.md (currently open)  

- In run_analysis.R, R code for the whole process of extracting and cleaning the data is present.   
- Full description of measurement variables can be found in Codebook.rmd  
- This ReadMe.md file describes my methods and assumptions in attempting the project. It also describes the process to run the code and access the resulting data.  


##The Approach  
I have divided my project task in the following sub-goals/steps:  

1. Load required packages  
2. Read the data  
3. Merge the datasets  
4. Remove the unwanted columns  
5. Put activity name in ActivityName Column  
6. Calculate mean of all measurement variables for each activity by an individual subject by Grouping the data according to Subject & Activity, then finding the mean  
7. Convert to tidy data by gathering columns, improving variable names and sorting according to Subject and Activity  
8. Write the tidy data to tidy_data.txt  

*The above steps have also been mentioned as comments in run_analysis.R file.*  

  
##The Assumptions  
After going through the following paper:  

[Hadley's Paper](https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html)  

and various threads on discussion forums, I understood there is no one right answer. The idea is to execute the project according to our understanding and describe what we did. So here is what I did.  
* Firstly, I read the data from relevant (x..., y..., subject... .txt files in test and train folders) files using *read.table* command. I also read features.txt file to get the name of measurement variables.   
* Then, I combined rows of "x_test.txt" and "x_train.txt to get one "X_Txt" data table. Followed similar process to obtain "Y_Txt" and "Subj_Txt".   
* Later I assigned labels - "ActivityLabel" to "Y_Txt", "Subject" to "Subj_Txt" and labels from features.txt to "X_Txt"    
* Next I removed unwanted columns from X_Txt (i.e. not having mean or std dev measurements) and combined these subset data tables column wise to get "subsetData" data table.   
* Next step is to add the activity name from activity_labels.txt file. I did it by using setkey function in both data tables and merging them. Now I have two Activity columns - ActivityLabel and ActivityName. 
* I am not deleting the numeric column ActivityLabel as I will be using it to sort the final data table.   
* Now I calculated the mean for each activity for each subject.   
* Next step is to gather the columns in rows and change their name. I removed the numeric portion in the prefix of their name. Rest I did not decompose the variable names. In my opinion it might cause confusion. I also read the 
following thread by a fellow student about it:   

[Assignment Guidelines](https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/)  


* I sorted the data according to Subject, ActivityLabel. Then I removed the ActivityLabel column as ActivityName is sufficient to know the type of activity. The numeric form was just retained to sort.   
* Meanwhile I keep removing the objects not required in further process.   
* Final step is to write the data table in a text file - tidy_data.txt   

For units of measurements I referred to the following link:  

[Measurement Units](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names)  

and put them in the Codebook.rmd.   
 
    
##How to run the R file?  

  
####Requirements:  
1. Original version of Samsung Data (as given in the project question statement) should be downloaded in your R working directory  

2. run_analysis.R should be downloaded in your R working directory  

  
####Process:  
Type:   

    source('./run_analysis.r')  

Press Enter  
This will run the code.  

  
####Result:  
**Two** things:
  
1. Generate a data table object named "tidyData" in your R workspace. You can view its content by either clicking on it or running the following command in console:   

````
    View(tidyData)   
````   

2. Create "tidy_data.txt" file in your R working directory. This text file can either be viewed by double clicking on it or it can be read back into R by the following command:  

````
    dataFrmFile <- read.table("./tidy_data.txt", header = TRUE)  
    View(dataFrmFile)*  
````

To fully understand the meaning of each observation, it is important to read the data in conjunction with Codebook.rmd file.   

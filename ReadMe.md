#ReadMe for Course Project in Getting & Cleaning Data


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
5. Put activity label in ActivityLabel Column  
6. Calculate mean of all measurement variables for each activity by an individual subject by Grouping the data according to Subject & Activity, then finding the mean  
7. Convert to tidy data by gathering columns, improving variable names and sorting according to Subject and Activity  
8. Write the tidy data to tidy_data.txt  

*The above steps have also been mentioned as comments in run_analysis.R file.*  

  
##The Assumptions  
  

  
##How to run the R file?  

  
###Requirements:  
1. Unmodified Samsung Data (as given in the project question statement) should be downloaded in your R working directory  

2. run_analysis.R should be downloaded in your R working directory  

  
###Process:  
Type:   

    source('./run_analysis.r')  

Press Enter  

This will run the code.  

  
###Result:  
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

	

	








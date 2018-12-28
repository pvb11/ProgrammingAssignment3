The script 'run_analysis.R' will perform the following operations. All of the code is contained in this one script.

The file will load in data sets containing all testing and training data sets, including relevant labels for the data. The code also filters the measurement data so that it only includes means and standard deviations. The code binds the data sets together to create one single data set containing subject, activity, and all mean and standard deviation data.

Finally, the code computes the average across measurements for each distinct subject and activity. The final result is printed to 'tidy_set.txt' which is also located in this repo.

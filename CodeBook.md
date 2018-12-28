Data Sources:
"train/subject_train.txt" contains subject information for each data entry in the training set.
"train/y_train.txt" contains activity information for each data entry in the training set.
"train/X_train.txt" contains measurements for each data entry in the training set.
"train/subject_test.txt" contains subject information for each data entry in the testing set.
"train/y_test.txt" contains activity information for each data entry in the testing set.
"train/X_test.txt" contains measurements for each data entry in the testing set.
"features.txt" contains the labels for each of the measurements in the data set.
"activity_labels.txt" contains the labels for each activity in the data set.

Variables:
'feature_means' contains the locations of the mean measurements.
'feature_stds' contains the locations of the standard deviation measurements.
'feature_all' contains all of the relevant measurements.
'measure_filtered_train' is a filtered set of measurements of the training data to only include mean and standard deviations.
'combined_train' is a single data set containing all of the relevant training set data.
'measure_filtered_test' is a filtered set of measurements of the testing data to only include mean and standard deviations.
'combined_test' is a single data set containing all of the relevant testing set data.
'combined_all' contains both training and testing data.
'combined_avgs' contains the averages of the data from 'combined_all' based on subject and activity.

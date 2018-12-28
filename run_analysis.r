# Load in feature labels and select means and standard deviations.
feature_labels<-read.table("features.txt",col.names=c("ind","feature"))
feature_means<-grep("mean",feature_labels[,2])
feature_stds<-grep("std",feature_labels[,2])
feature_all<-union(feature_means,feature_stds)

# Load training data.
subject_train<-read.table("train/subject_train.txt",col.names=c("Subject"))
activity_train<-read.table("train/y_train.txt",col.names=c("Activity"))
measure_train<-read.table("train/X_train.txt",col.names=feature_labels[,2])
measure_filtered_train<-measure_train[,feature_all]
combined_train<-cbind(subject_train,activity_train,measure_filtered_train)

# Load testing data.
subject_test<-read.table("test/subject_test.txt",col.names=c("Subject"))
activity_test<-read.table("test/y_test.txt",col.names=c("Activity"))
measure_test<-read.table("test/X_test.txt",col.names=feature_labels[,2])
measure_filtered_test<-measure_test[,feature_all]
combined_test<-cbind(subject_test,activity_test,measure_filtered_test)

# Combine training and testing data.
combined_all<-rbind(combined_train,combined_test)

# Apply descriptive activity labels.
activity_labels<-read.table("activity_labels.txt",col.names=c("ind","activity_label"))
combined_all[,2]<-factor(combined_all[,2],levels=activity_labels[,1],labels=activity_labels[,2])

# Calculate averages by each subject and activity for each measurement.
combined_avgs<-aggregate(combined_all[,3:81],combined_all[,1:2],mean)

# Write the data set to a file.
write.table(combined_avgs,"tidy_set.txt",row.names=FALSE)
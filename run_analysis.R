#dependencies on dplyr, reshape2
library(dplyr)
library(reshape2)

#4. Label data set w descriptive variable names
#I know this is step four, but seems easier to do it here
featNamesInit<-read.table("features.txt", stringsAsFactors=FALSE)
featNamesInit<-data.frame(featNamesInit[,-1])
featNames<-dplyr::transmute(featNamesInit,descName=
                        sub("tGravity","Gravity",
                            sub("tBody","Body",
                                sub("-Z",".Zaxis",
                                    sub("-Y",".Yaxis",
                                        sub("-X", ".Xaxis",
                                            sub("Acc",".AxialAccln",
                                                sub("Gyro",".AngularAccln",
                                                    sub("-mean\\()",".Mean",
                                                        sub("-std\\()",".Stdev",featNamesInit[,1]))))))))))

#1. Merges the training and the test sets to create one data set
# assume that zip file has already been downloaded
# assume that relevant files have been manually moved into working directory
subtrain<-read.table("subject_train.txt", col.names=c("subjectID"))
xtrain<-read.table("X_train.txt", col.names=c(t(featNames)))
ytrain<-read.table("y_train.txt", col.names=c(
  "activityCode"))
subtest<-read.table("subject_test.txt", col.names=c("subjectID"))
xtest<-read.table("X_test.txt", col.names=c(t(featNames)))
ytest<-read.table("y_test.txt", col.names=c(
  "activityCode"))
test<-dplyr::bind_cols(subtest, xtest, ytest)
train<-dplyr::bind_cols(subtrain, xtrain, ytrain)
dat<-rbind(train,test)

#2. Extract only the mean and standard deviation for each measurement
# select subject, mean, std, activites
selectColsInit<-dat[,grepl("subjectID|Mean|Stdev|activityCode",names(dat))]
#remove meanFreq columns
selectCols<-selectColsInit[,grep("Freq",names(selectColsInit),invert=TRUE)]

#3. Use descriptive activity names for activities in the data set
#join to activity_labels.txt to get descriptive names
activityLabels<-read.table("activity_labels.txt", 
                           col.names=c("activityCode", "activityDescription"))
selectColswActLblInit<-inner_join(selectCols,activityLabels, by="activityCode")
tidyRawData<-dplyr::select(selectColswActLblInit,-(activityCode))

#5. Create tidy data set w the avg for each variable for each activity and each subject
tidyFeatNames<-colnames(tidyRawData)
tidyMelt<-melt(tidyRawData, id.vars=c("subjectID","activityDescription"), 
            measure.vars=tidyFeatNames[2:74])
tidyAggr<-dcast(tidyMelt,subjectID+variable~activityDescription,mean)

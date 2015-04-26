readme

##Summary
This script outputs a tidy data set based on the Human Activity Recognition Using Smartphones Data Set dataset at the UC Irvine Machine Learning Repository.  

##Source data
The source data is here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Processing steps
The raw data includes accelerometer readings for 30 subjects.  Each reading is a 561 feature vector These readings are used to build an activity model that identifies each subject activity as walking, laying, walking upstairs, walking downstairs, sitting, or running

From this raw data, we select only those readings pertaining to the mean and standard deviation for each accelerometer.  This results in a 73 feature vector.  These result are then aggregated by calculating the mean for each subject for each activity.  

The results of this aggretion are presented with the average for each activity type presented grouped by subject and feature.

All values are unitless as raw data has been normalized.

##Code book
1   subjectID									number from one to thirty indicating study subject ID
2	Body.AxialAccln.Mean.Xaxis 					avg of the mean of the X axis axial acceleration reading (decomposed to body component)
3	Body.AxialAccln.Mean.Yaxis 					avg of the mean of the Y axis axial acceleration reading (decomposed to body component)
4	Body.AxialAccln.Mean.Zaxis 					avg of the mean of the Z axis axial acceleration reading (decomposed to body component)
5	Body.AxialAccln.Stdev.Xaxis 				avg of the standard deviation of the X axis axial acceleration reading (decomposed to body component)
6	Body.AxialAccln.Stdev.Yaxis 				avg of the standard deviation of the Y axis axial acceleration reading (decomposed to body component)
7	Body.AxialAccln.Stdev.Zaxis 				avg of the standard deviation of the Z axis axial acceleration reading (decomposed to body component)
8	Gravity.AxialAccln.Mean.Xaxis 				avg of the mean of the X axis axial acceleration reading (decomposed to gravity component)
9	Gravity.AxialAccln.Mean.Yaxis 				avg of the mean of the Y axis axial acceleration reading (decomposed to gravity component)
10	Gravity.AxialAccln.Mean.Zaxis 				avg of the mean of the Z axis axial acceleration reading (decomposed to gravity component)
11	Gravity.AxialAccln.Stdev.Xaxis 				avg of the standard deviation of the X axis axial acceleration reading (decomposed to gravity component)
12	Gravity.AxialAccln.Stdev.Yaxis 				avg of the standard deviation of the Y axis axial acceleration reading (decomposed to gravity component)
13	Gravity.AxialAccln.Stdev.Zaxis 				avg of the standard deviation of the Z axis axial acceleration reading (decomposed to gravity component)
14	Body.AxialAcclnJerk.Mean.Xaxis 				avg of the mean of the X axis axial acceleration reading (jerk reading)
15	Body.AxialAcclnJerk.Mean.Yaxis 				avg of the mean of the Y axis axial acceleration reading (jerk reading)
16	Body.AxialAcclnJerk.Mean.Zaxis 				avg of the mean of the Z axis axial acceleration reading (jerk reading)
17	Body.AxialAcclnJerk.Stdev.Xaxis 			avg of the standard deviation of the X axis axial acceleration reading (jerk reading)
18	Body.AxialAcclnJerk.Stdev.Yaxis 		 	avg of the standard deviation of the Y axis axial acceleration reading (jerk reading)
19	Body.AxialAcclnJerk.Stdev.Zaxis	    		avg of the standard deviation of the Y axis axial acceleration reading (jerk reading)
20	Body.Angular.AxialAcclnln.Mean.Xaxis		avg of the mean of the X axis angular acceleration reading 
21	Body.Angular.AxialAcclnln.Mean.Yaxis		avg of the mean of the Y axis angular acceleration reading
22	Body.Angular.AxialAcclnln.Mean.Zaxis		avg of the mean of the Z axis angular acceleration reading
23	Body.Angular.AxialAcclnln.Stdev.Xaxis		avg of the standard deviation of the X axis angular acceleration reading
24	Body.Angular.AxialAcclnln.Stdev.Yaxis		avg of the standard deviation of the Y axis angular acceleration reading
25	Body.Angular.AxialAcclnln.Stdev.Zaxis		avg of the standard deviation of the Z axis angular acceleration reading
26	Body.Angular.AxialAcclnlnJerk.Mean.Xaxis    avg of the mean of the X axis angular acceleration reading (jerk reading) 
27	Body.Angular.AxialAcclnlnJerk.Mean.Yaxis    avg of the mean of the Y axis angular acceleration reading (jerk reading) 
28	Body.Angular.AxialAcclnlnJerk.Mean.Zaxis    avg of the mean of the Z axis angular acceleration reading (jerk reading) 
29	Body.Angular.AxialAcclnlnJerk.Stdev.Xaxis   avg of the standard deviation of the X axis angular acceleration reading (jerk reading) 
30	Body.Angular.AxialAcclnlnJerk.Stdev.Yaxis   avg of the standard deviation of the Y axis angular acceleration reading (jerk reading) 
31	Body.Angular.AxialAcclnlnJerk.Stdev.Zaxis   avg of the standard deviation of the Z axis angular acceleration reading (jerk reading) 
32	Body.AxialAcclnMag.Mean 					avg of the mean of the magnitude of the axial acceleration reading (body component) 
33	Body.AxialAcclnMag.Stdev 					avg of the standard deviation of the magnitude of the axial acceleration reading (body component) 
34	Gravity.AxialAcclnMag.Mean 					avg of the mean of the magnitude of the axial acceleration reading (gravity component) 
35	Gravity.AxialAcclnMag.Stdev  				avg of the standard deviation of the magnitude of the axial acceleration reading (gravity component) 
36	Body.AxialAcclnJerkMag.Mean 				avg of the mean of the magnitude of the axial acceleration jerk reading (body component) 
37	Body.AxialAcclnJerkMag.Stdev 				avg of the standard deviation of the magnitude of the axial acceleration jerk reading (body component) 
38	Body.Angular.AxialAcclnlnMag.Mean 			avg of the mean of the magnitude of the angular acceleration reading (body component)
39	Body.Angular.AxialAcclnlnMag.Stdev			avg of standard deviation of the magnitude of the angular acceleration reading (body component)
40	Body.Angular.AxialAcclnlnJerkMag.Mean 		avg of the mean of the magnitude of the angular acceleration jerk reading (body component)
41	Body.Angular.AxialAcclnlnJerkMag.Stdev 		avg of standard deviation of the magnitude of the angular acceleration jerk reading (body component)
42	fBody.AxialAccln.Mean.Xaxis 				avg of the mean of the fourier transformed X axis axial acceleration reading (body component) 
43	fBody.AxialAccln.Mean.Yaxis 				avg of the mean of the fourier transformed Y axis axial acceleration reading (body component) 
44	fBody.AxialAccln.Mean.Zaxis 				avg of the mean of the fourier transformed Z axis axial acceleration reading (body component)
45	fBody.AxialAccln.Stdev.Xaxis 				avg of the standard deviation of the fourier transformed X axis axial acceleration reading (body component) 
46	fBody.AxialAccln.Stdev.Yaxis 				avg of the standard deviation of the fourier transformed Y axis axial acceleration reading (body component)
47	fBody.AxialAccln.Stdev.Zaxis 				avg of the standard deviation of the fourier transformed Z axis axial acceleration reading (body component)
48	fBody.AxialAcclnJerk.Mean.Xaxis 			avg of the mean of the fourier transformed X axis axial acceleration jerk reading (body component)
49	fBody.AxialAcclnJerk.Mean.Yaxis
50	fBody.AxialAcclnJerk.Mean.Zaxis
51	fBody.AxialAcclnJerk.Stdev.Xaxis 			avg of the standard deviation of the fourier transformed X axis axial acceleration jerk reading (body component)
52	fBody.AxialAcclnJerk.Stdev.Yaxis
53	fBody.AxialAcclnJerk.Stdev.Zaxis
54	fBody.Angular.AxialAcclnln.Mean.Xaxis 		avg of the mean of the fourier transformed X axis angular acceleration jerk reading (body component)
55	fBody.Angular.AxialAcclnln.Mean.Yaxis
56	fBody.Angular.AxialAcclnln.Mean.Zaxis
57	fBody.Angular.AxialAcclnln.Stdev.Xaxis 		avg of the standard deviation of the fourier transformed X axis angular acceleration jerk reading (body component)
58	fBody.Angular.AxialAcclnln.Stdev.Yaxis
59	fBody.Angular.AxialAcclnln.Stdev.Zaxis
60	fBody.AxialAcclnMag.Mean 					avg of the mean magnitude of the fourier transformed X axis axial acceleration reading (body component)
61	fBody.AxialAcclnMag.Stdev
62	fBodyBody.AxialAcclnJerkMag.Mean 			avg of the mean magnitude of the fourier transformed X axis axial acceleration jerk reading (body component)
63	fBodyBody.AxialAcclnJerkMag.Stdev
64	fBodyBody.Angular.AxialAcclnlnMag.Mean
65	fBodyBody.Angular.AxialAcclnlnMag.Stdev
66	fBodyBody.Angular.AxialAcclnlnJerkMag.Mean
67	fBodyBody.Angular.AxialAcclnlnJerkMag.Stdev
68	angle.Body.AxialAcclnMean.gravity.
69	angle.Body.AxialAcclnJerkMean..gravityMean.
70	angle.Body.Angular.AxialAcclnlnMean.gravityMean.
71	angle.Body.Angular.AxialAcclnlnJerkMean.gravityMean.
72	angle.X.gravityMean.
73	angle.Y.gravityMean.
74	angle.Z.gravityMean.
75	activityDescription
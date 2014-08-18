CodeBook
========

## 1. Transformation steps

The following steps were applied in the original dataset
 - merged the training and test sets to create just one data set.
 - extracted only the columns that represented the mean or the standard deviation for each measurement.
 - mapped the activity ids to the proper activity names
 - changed the extracted column names to something more readable
 - created a result dataset with the average of each measurement, for each subject/activity pair.

## 2. Measurements

### 2.1 Measurement domain
* time domain
* frequency domain

### Measurement source
* accelerometer
* gyroscope

### Measured data
* triaxial body acceleration (mean and standard deviation)
* triaxial gravity (mean and standard deviation)
* triaxial body jerk (mean and standard deviation)
* body acceleration magnitude (mean and standard deviation)
* gravity magnitude (mean and standard deviation)
* body jerk magnitude (mean and standard deviation)

## 3. Data columns

### 3.1 Time domain columns
```
col_id	type	range	measurement
1		numeric	[-1,1]	"accelerometer - time domain - body acceleration - X axis mean"
2		numeric	[-1,1]	"accelerometer - time domain - body acceleration - Y axis mean"
3		numeric	[-1,1]	"accelerometer - time domain - body acceleration - Z axis mean"
4		numeric	[-1,1]	"accelerometer - time domain - body acceleration - X axis standard deviation"
5		numeric	[-1,1]	"accelerometer - time domain - body acceleration - Y axis standard deviation"
6		numeric	[-1,1]	"accelerometer - time domain - body acceleration - Z axis standard deviation"
7		numeric	[-1,1]	"accelerometer - time domain -  gravity - X axis mean"
8		numeric	[-1,1]	"accelerometer - time domain -  gravity - Y axis mean"
9		numeric	[-1,1]	"accelerometer - time domain -  gravity - Z axis mean"
10		numeric	[-1,1]	"accelerometer - time domain -  gravity - X axis standard deviation"
11		numeric	[-1,1]	"accelerometer - time domain -  gravity - Y axis standard deviation"
12		numeric	[-1,1]	"accelerometer - time domain -  gravity - Z axis standard deviation"
13		numeric	[-1,1]	"accelerometer - time domain -  body jerk - X axis mean"
14		numeric	[-1,1]	"accelerometer - time domain -  body jerk - Y axis mean"
15		numeric	[-1,1]	"accelerometer - time domain -  body jerk - Z axis mean"
16		numeric	[-1,1]	"accelerometer - time domain -  body jerk - X axis standard deviation"
17		numeric	[-1,1]	"accelerometer - time domain -  body jerk - Y axis standard deviation"
18		numeric	[-1,1]	"accelerometer - time domain -  body jerk - Z axis standard deviation"
19		numeric	[-1,1]	"gyroscope - time domain - body acceleration - X axis mean"
20		numeric	[-1,1]	"gyroscope - time domain - body acceleration - Y axis mean"
21		numeric	[-1,1]	"gyroscope - time domain - body acceleration - Z axis mean"
22		numeric	[-1,1]	"gyroscope - time domain - body acceleration - X axis standard deviation"
23		numeric	[-1,1]	"gyroscope - time domain - body acceleration - Y axis standard deviation"
24		numeric	[-1,1]	"gyroscope - time domain - body acceleration - Z axis standard deviation"
25		numeric	[-1,1]	"gyroscope - time domain -  body jerk - X axis mean"
26		numeric	[-1,1]	"gyroscope - time domain -  body jerk - Y axis mean"
27		numeric	[-1,1]	"gyroscope - time domain -  body jerk - Z axis mean"
28		numeric	[-1,1]	"gyroscope - time domain -  body jerk - X axis standard deviation"
29		numeric	[-1,1]	"gyroscope - time domain -  body jerk - Y axis standard deviation"
30		numeric	[-1,1]	"gyroscope - time domain -  body jerk - Z axis standard deviation"
31		numeric	[-1,1]	"accelerometer - time domain -  body acceleration magnitude - mean"
32		numeric	[-1,1]	"accelerometer - time domain -  body acceleration magnitude - standard deviation"
33		numeric	[-1,1]	"accelerometer - time domain -  gravity magnitude - mean"
34		numeric	[-1,1]	"accelerometer - time domain -  gravity magnitude - standard deviation"
35		numeric	[-1,1]	"accelerometer - time domain -  body jerk magnitude - mean"
36		numeric	[-1,1]	"accelerometer - time domain -  body jerk magnitude - standard deviation"
37		numeric	[-1,1]	"gyroscope - time domain -  body acceleration magnitude - mean"
38		numeric	[-1,1]	"gyroscope - time domain -  body acceleration magnitude - standard deviation"
39		numeric	[-1,1]	"gyroscope - time domain -  body jerk magnitude - mean"
40		numeric	[-1,1]	"gyroscope - time domain -  body jerk magnitude - standard deviation"
```

### 3.2 Frequency domain columns
```
col_id	type	range	measurement
41		numeric	[-1,1]	"accelerometer - frequency domain - body acceleration - X axis mean"
42		numeric	[-1,1]	"accelerometer - frequency domain - body acceleration - Y axis mean"
43		numeric	[-1,1]	"accelerometer - frequency domain - body acceleration - Z axis mean"
44		numeric	[-1,1]	"accelerometer - frequency domain - body acceleration - X axis standard deviation"
45		numeric	[-1,1]	"accelerometer - frequency domain - body acceleration - Y axis standard deviation"
46		numeric	[-1,1]	"accelerometer - frequency domain - body acceleration - Z axis standard deviation"
47		numeric	[-1,1]	"accelerometer - frequency domain - body acceleration -  X axis mean frequency"
48		numeric	[-1,1]	"accelerometer - frequency domain - body acceleration -  Y axis mean frequency"
49		numeric	[-1,1]	"accelerometer - frequency domain - body acceleration -  Z axis mean frequency"
50		numeric	[-1,1]	"accelerometer - frequency domain -  body jerk - X axis mean"
51		numeric	[-1,1]	"accelerometer - frequency domain -  body jerk - Y axis mean"
52		numeric	[-1,1]	"accelerometer - frequency domain -  body jerk - Z axis mean"
53		numeric	[-1,1]	"accelerometer - frequency domain -  body jerk - X axis standard deviation"
54		numeric	[-1,1]	"accelerometer - frequency domain -  body jerk - Y axis standard deviation"
55		numeric	[-1,1]	"accelerometer - frequency domain -  body jerk - Z axis standard deviation"
56		numeric	[-1,1]	"accelerometer - frequency domain -  body jerk -  X axis mean frequency"
57		numeric	[-1,1]	"accelerometer - frequency domain -  body jerk -  Y axis mean frequency"
58		numeric	[-1,1]	"accelerometer - frequency domain -  body jerk -  Z axis mean frequency"
59		numeric	[-1,1]	"gyroscope - frequency domain - body acceleration - X axis mean"
60		numeric	[-1,1]	"gyroscope - frequency domain - body acceleration - Y axis mean"
61		numeric	[-1,1]	"gyroscope - frequency domain - body acceleration - Z axis mean"
62		numeric	[-1,1]	"gyroscope - frequency domain - body acceleration - X axis standard deviation"
63		numeric	[-1,1]	"gyroscope - frequency domain - body acceleration - Y axis standard deviation"
64		numeric	[-1,1]	"gyroscope - frequency domain - body acceleration - Z axis standard deviation"
65		numeric	[-1,1]	"gyroscope - frequency domain - body acceleration -  X axis mean frequency"
66		numeric	[-1,1]	"gyroscope - frequency domain - body acceleration -  Y axis mean frequency"
67		numeric	[-1,1]	"gyroscope - frequency domain - body acceleration -  Z axis mean frequency"
68		numeric	[-1,1]	"accelerometer - frequency domain -  body acceleration magnitude - mean"
69		numeric	[-1,1]	"accelerometer - frequency domain -  body acceleration magnitude - standard deviation"
70		numeric	[-1,1]	"accelerometer - frequency domain -  body acceleration magnitude - mean frequency"
71		numeric	[-1,1]	"accelerometer - frequency domain -  body jerk magnitude - mean"
72		numeric	[-1,1]	"accelerometer - frequency domain -  body jerk magnitude - standard deviation"
73		numeric	[-1,1]	"accelerometer - frequency domain -  body jerk magnitude - mean frequency"
74		numeric	[-1,1]	"gyroscope - frequency domain -  body acceleration magnitude - mean"
75		numeric	[-1,1]	"gyroscope - frequency domain -  body acceleration magnitude - standard deviation"
76		numeric	[-1,1]	"gyroscope - frequency domain -  body acceleration magnitude - mean frequency"
77		numeric	[-1,1]	"gyroscope - frequency domain -  body jerk magnitude - mean"
78		numeric	[-1,1]	"gyroscope - frequency domain -  body jerk magnitude - standard deviation"
79		numeric	[-1,1]	"gyroscope - frequency domain -  body jerk magnitude - mean frequency"
```

### 3.3 Subset columns
```
col_id	type		range																	name
80		numeric 	[1,30]																	"subject_id"
81		character	(WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING)	"activity"
```

CodeBook
========

The following steps were applied in the original dataset
 - merged the training and test sets to create just one data set.
 - extracted only the columns that represented the mean or the standard deviation for each measurement.
 - mapped the activity ids to the proper activity names
 - changed the extracted column names to something more readable
 - created a result dataset with the average of each measurement, for each subject/activity pair.

Domains
-------
* time domain
* frequency domain

Measurement source
------------------
* accelerometer
* gyroscope

Measurements
------------
* triaxial body acceleration (mean and standard deviation)
* triaxial gravity (mean and standard deviation)
* triaxial body jerk (mean and standard deviation)
* body acceleration magnitude (mean and standard deviation)
* gravity magnitude (mean and standard deviation)
* body jerk magnitude (mean and standard deviation)

Measurements Range
------------------
* all measurements were normalized between -1 and 1

Time domain columns
-------------------
```
col_id	column_name
1	"accelerometer - time domain - body acceleration - X axis mean"
2	"accelerometer - time domain - body acceleration - Y axis mean"
3	"accelerometer - time domain - body acceleration - Z axis mean"
4	"accelerometer - time domain - body acceleration - X axis standard deviation"
5	"accelerometer - time domain - body acceleration - Y axis standard deviation"
6	"accelerometer - time domain - body acceleration - Z axis standard deviation"
7	"accelerometer - time domain -  gravity - X axis mean"
8	"accelerometer - time domain -  gravity - Y axis mean"
9	"accelerometer - time domain -  gravity - Z axis mean"
10	"accelerometer - time domain -  gravity - X axis standard deviation"
11	"accelerometer - time domain -  gravity - Y axis standard deviation"
12	"accelerometer - time domain -  gravity - Z axis standard deviation"
13	"accelerometer - time domain -  body jerk - X axis mean"
14	"accelerometer - time domain -  body jerk - Y axis mean"
15	"accelerometer - time domain -  body jerk - Z axis mean"
16	"accelerometer - time domain -  body jerk - X axis standard deviation"
17	"accelerometer - time domain -  body jerk - Y axis standard deviation"
18	"accelerometer - time domain -  body jerk - Z axis standard deviation"
19	"gyroscope - time domain - body acceleration - X axis mean"
20	"gyroscope - time domain - body acceleration - Y axis mean"
21	"gyroscope - time domain - body acceleration - Z axis mean"
22	"gyroscope - time domain - body acceleration - X axis standard deviation"
23	"gyroscope - time domain - body acceleration - Y axis standard deviation"
24	"gyroscope - time domain - body acceleration - Z axis standard deviation"
25	"gyroscope - time domain -  body jerk - X axis mean"
26	"gyroscope - time domain -  body jerk - Y axis mean"
27	"gyroscope - time domain -  body jerk - Z axis mean"
28	"gyroscope - time domain -  body jerk - X axis standard deviation"
29	"gyroscope - time domain -  body jerk - Y axis standard deviation"
30	"gyroscope - time domain -  body jerk - Z axis standard deviation"
31	"accelerometer - time domain -  body acceleration magnitude - mean"
32	"accelerometer - time domain -  body acceleration magnitude - standard deviation"
33	"accelerometer - time domain -  gravity magnitude - mean"
34	"accelerometer - time domain -  gravity magnitude - standard deviation"
35	"accelerometer - time domain -  body jerk magnitude - mean"
36	"accelerometer - time domain -  body jerk magnitude - standard deviation"
37	"gyroscope - time domain -  body acceleration magnitude - mean"
38	"gyroscope - time domain -  body acceleration magnitude - standard deviation"
39	"gyroscope - time domain -  body jerk magnitude - mean"
40	"gyroscope - time domain -  body jerk magnitude - standard deviation"
```

Frequency domain columns
------------------------
```
col_id	column_name
41	"accelerometer - frequency domain - body acceleration - X axis mean"
42	"accelerometer - frequency domain - body acceleration - Y axis mean"
43	"accelerometer - frequency domain - body acceleration - Z axis mean"
44	"accelerometer - frequency domain - body acceleration - X axis standard deviation"
45	"accelerometer - frequency domain - body acceleration - Y axis standard deviation"
46	"accelerometer - frequency domain - body acceleration - Z axis standard deviation"
47	"accelerometer - frequency domain - body acceleration -  X axis mean frequency"
48	"accelerometer - frequency domain - body acceleration -  Y axis mean frequency"
49	"accelerometer - frequency domain - body acceleration -  Z axis mean frequency"
50	"accelerometer - frequency domain -  body jerk - X axis mean"
51	"accelerometer - frequency domain -  body jerk - Y axis mean"
52	"accelerometer - frequency domain -  body jerk - Z axis mean"
53	"accelerometer - frequency domain -  body jerk - X axis standard deviation"
54	"accelerometer - frequency domain -  body jerk - Y axis standard deviation"
55	"accelerometer - frequency domain -  body jerk - Z axis standard deviation"
56	"accelerometer - frequency domain -  body jerk -  X axis mean frequency"
57	"accelerometer - frequency domain -  body jerk -  Y axis mean frequency"
58	"accelerometer - frequency domain -  body jerk -  Z axis mean frequency"
59	"gyroscope - frequency domain - body acceleration - X axis mean"
60	"gyroscope - frequency domain - body acceleration - Y axis mean"
61	"gyroscope - frequency domain - body acceleration - Z axis mean"
62	"gyroscope - frequency domain - body acceleration - X axis standard deviation"
63	"gyroscope - frequency domain - body acceleration - Y axis standard deviation"
64	"gyroscope - frequency domain - body acceleration - Z axis standard deviation"
65	"gyroscope - frequency domain - body acceleration -  X axis mean frequency"
66	"gyroscope - frequency domain - body acceleration -  Y axis mean frequency"
67	"gyroscope - frequency domain - body acceleration -  Z axis mean frequency"
68	"accelerometer - frequency domain -  body acceleration magnitude - mean"
69	"accelerometer - frequency domain -  body acceleration magnitude - standard deviation"
70	"accelerometer - frequency domain -  body acceleration magnitude - mean frequency"
71	"accelerometer - frequency domain -  body jerk magnitude - mean"
72	"accelerometer - frequency domain -  body jerk magnitude - standard deviation"
73	"accelerometer - frequency domain -  body jerk magnitude - mean frequency"
74	"gyroscope - frequency domain -  body acceleration magnitude - mean"
75	"gyroscope - frequency domain -  body acceleration magnitude - standard deviation"
76	"gyroscope - frequency domain -  body acceleration magnitude - mean frequency"
77	"gyroscope - frequency domain -  body jerk magnitude - mean"
78	"gyroscope - frequency domain -  body jerk magnitude - standard deviation"
79	"gyroscope - frequency domain -  body jerk magnitude - mean frequency"
```

Subset columns
--------------
```
col_id	column_name
80	"subject_id"
81	"activity"
```

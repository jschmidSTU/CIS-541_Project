# CIS541_Project

This goal of this project is the analysis of Miami traffic and investigation where it can be optimized.


In the first part, an analysis is performed to return the Miami streets where most of the accidents happen.
File: US_Accidents_Dec20_updated.csv
Code: Accidents Streets.R


In the second part, public transportation is introduced as a possibility for improvement. The subject of the analysis is the prediction of traffic volume in public transportation.

The first approach is a mapping of the volume against the time frames hour, day, month, and year.
File: Metro_Interstate_Traffic_Volume.csv
Code: Metro_Traffic_Time.R

In a second consideration, a more thouough analysis is performed with a linear regression approach, taking also multiple weather aspects into consideration. Due to memory issues, this analysis is performed in Google Colab instead of RStudio (for details see Metro_Traffic_Regression.ipynb).
File: Metro_Interstate_Traffic_Volume.csv
Code: Metro_Traffic_Regression.ipynb

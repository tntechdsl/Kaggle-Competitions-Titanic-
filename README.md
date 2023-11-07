# Kaggle Link
https://www.kaggle.com/c/titanic

# Evaluating your results
For submission and evaluation. After your model has processed the testing data save the data to a csv file with 418 entries and a Header Row.
This file should only have two columns. 

## R
In R this is done with:  
  
&emsp;library readr  
  
&emsp;results <- data.framedata.frame(Header1=survivorIDs, Header2=predictions)  
&emsp;write_csv(results, "rf_benchmark.csv") 

  
## Python
Here are a few examples on geeksforgeeks of using pandas: https://www.geeksforgeeks.org/different-ways-to-create-pandas-dataframe/#
One I would recommend from there:  
  
&emsp;import pandas

&emsp;data = {'PassengerID':[passengerIDs],  
&emsp;&emsp;&emsp;&emsp;&ensp;'Survived':[predictions]}   
&emsp;results = pandas.DataFrame(data)  

\#*This line is needed to delete the index column of the dataframe and export your data*  
&emsp;results.to_csv(file,index=False) 

### Pandas
In order to use pandas you must first install it.  
In the terminal or powershell enter:  **pip3 install pandas**

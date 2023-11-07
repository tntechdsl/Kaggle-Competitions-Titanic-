# Kaggle Link
https://www.kaggle.com/c/titanic

# Evaluating your results
For submission and evaluation. After your model has processed the testing data save the data to a csv file with 418 entries and a Header Row.
This file should only have two columns. 

## R
In R this is done with:
  library readr  
  
  results <- data.framedata.frame(Header1=survivorIDs, Header2=predictions)
  write_csv(results, "rf_benchmark.csv") 

## Python
Here are a few examples on geeksforgeeks of using pandas: https://www.geeksforgeeks.org/different-ways-to-create-pandas-dataframe/#
One I would recommend from there:
  import pandas

  data = {'PassengerID':[passengerIDs],
          'Survived':[predictions]}
  results = pandas.DataFrame(data)
  
  results.to_csv(file,index=False) *This line is not included on geeksforgeeks but is needed to delete the index column of the dataframe*

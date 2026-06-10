import pandas as pd 
import numpy as np
#creating the raw data mock dataset
data={
    'property_id':[1,2,3,4,5],
    'price':[250000,300000,150000,400000,350000],
    'size_sqft':[1500,2000,1200,2500,1800],
    'date_listed':['2023_01_15','2023_03_10','2023_01_05','2023_05_01'],
    'year_built':[1990,2005,1980,2010,2000]
}
df=pd.DataFrame(data)
print(df)
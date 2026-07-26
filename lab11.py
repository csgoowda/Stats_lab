#Consider the Australian Drug Sales dataset and develop a Python code to perform Time
#Series Analysis and visualize using plots.

import pandas as pd
import matplotlib.pyplot as plt

drug_data = pd.read_csv(input("Enter CSV file path: "))

print(drug_data.head())

print(drug_data.info())

print(drug_data.describe())

print(drug_data.columns)

plt.figure(figsize=(10,5))

plt.plot(drug_data.iloc[:,0],
         drug_data.iloc[:,1],
         marker='o')

plt.title("Australian Drug Sales Time Series")

plt.xlabel(drug_data.columns[0])

plt.ylabel(drug_data.columns[1])

plt.grid(True)

plt.show()

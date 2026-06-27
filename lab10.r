#Develop a Python code to build a simple Linear Regression model to predict sales units
#based on the advertising budget spent on TV. Display the statistical summary of the
#model.
#3
#Sales 2 4 6 9 12 34 45
#TV 1 2 4 7 9 11 15

import pandas as pd
import statsmodels.api as sm

TV = [1,2,4,7,9,11,15]
Sales = [2,4,6,9,12,34,45]

data = pd.DataFrame({
    'TV': TV,
    'Sales': Sales
})

X = data['TV']
Y = data['Sales']

X = sm.add_constant(X)

model = sm.OLS(Y, X).fit()

print(model.summary())

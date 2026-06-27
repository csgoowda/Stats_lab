#Considerthe scores often studentsin SMIP andDBMSand Compute the Spearman rank
#correlation and Interpret the results using Python programming.
#3
#SMIP 70 46 94 34 20 86 18 12 56 64 42
#DBMS 60 66 90 46 16 98 24 08 32 54 62

from scipy.stats import spearmanr

SMIP = [70,46,94,34,20,86,18,12,56,64,42]
DBMS = [60,66,90,46,16,98,24,8,32,54,62]

correlation, pvalue = spearmanr(SMIP, DBMS)

print("Spearman Rank Correlation =", correlation)
print("P-value =", pvalue)

if pvalue < 0.05:
    print("Significant correlation exists")
else:
    print("No significant correlation")

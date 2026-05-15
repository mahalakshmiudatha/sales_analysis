import mysql.connector
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# STEP 12 — Connect Python to MySQL
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="maha0124",  # Replace with your MySQL password
    database="sales_analysis"
)

print("Connected Successfully")

# STEP 13 — Read SQL Data Using Pandas
query = "SELECT * FROM sales"
df = pd.read_sql(query, conn)
print(df)

# STEP 14 — Use NumPy Calculations
sales_array = np.array(df['total_amount'])

print("Average Sales:", np.mean(sales_array))
print("Maximum Sales:", np.max(sales_array))
print("Minimum Sales:", np.min(sales_array))

# STEP 15 — Create Chart
products = ['Laptop', 'Phone', 'Headphones']
sales = [50000, 40000, 6000]

plt.bar(products, sales)
plt.title("Product Sales")
plt.xlabel("Products")
plt.ylabel("Sales Amount")
plt.show()

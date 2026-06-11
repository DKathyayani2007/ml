import sqlite3
import pandas as pd
conn = sqlite3.connect('employee.db')
df = pd.read_sql_query(
    "SELECT * FROM employee WHERE department='CSE'",
    conn
)
print(df)
import sqlite3
import pandas as pd
conn = sqlite3.connect(r"C:\sqlite\employee.db")
df = pd.read_sql_query("SELECT * FROM employee", conn)
print(df)
conn.close()
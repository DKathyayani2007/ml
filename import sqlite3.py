<<<<<<< HEAD
import sqlite3
import pandas as pd
conn = sqlite3.connect(r"C:\sqlite\employee.db")
df = pd.read_sql_query("SELECT * FROM employee", conn)
print(df)
=======
import sqlite3
import pandas as pd
conn = sqlite3.connect(r"C:\sqlite\employee.db")
df = pd.read_sql_query("SELECT * FROM employee", conn)
print(df)
>>>>>>> 2a4480e6a4d54ac1b0366964fdde35385dc43775
conn.close()
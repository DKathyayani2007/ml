<<<<<<< HEAD
import sqlite3
import pandas as pd
conn = sqlite3.connect('employee.db')
df = pd.read_sql_query(
    "SELECT * FROM employee WHERE department='CSE'",
    conn
)
=======
import sqlite3
import pandas as pd
conn = sqlite3.connect('employee.db')
df = pd.read_sql_query(
    "SELECT * FROM employee WHERE department='CSE'",
    conn
)
>>>>>>> 2a4480e6a4d54ac1b0366964fdde35385dc43775
print(df)
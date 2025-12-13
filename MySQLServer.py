import mysql.connector



# Connect to the MySQL database
db = mysql.connector.connect(
    host="localhost",
    user="admin",
    password="password",
    # database="alx_book_store"
)

cursor = db.cursor()

try:
    cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error as err:
    print(f"Error: Failed to connect to the database{err}")
    exit(1)

cursor.execute("USE alx_book_store")

# Commit changes and close the connection
db.commit()
cursor.close()
db.close()
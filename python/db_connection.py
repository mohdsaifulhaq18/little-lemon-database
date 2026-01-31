import mysql.connector

connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="your_password",
    database="LittleLemonDB"
)

cursor = connection.cursor()

cursor.callproc("GetMaxQuantity")

for result in cursor.stored_results():
    print(result.fetchall())

cursor.close()
connection.close()

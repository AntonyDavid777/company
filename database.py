import mysql.connector

db=mysql.connector.connect(
    host="localhost",
    user="root",
    password="3072005",
    database="vechile"
)


cursor=db.cursor(dictionary=True)
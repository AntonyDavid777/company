import mysql.connector

db = mysql.connector.connect(
    host="sql.freedb.tech",
    user="u_HQspnQ",
    password="G5LNWDf76iED",
    database="freedb_oB0xu8bl",
    port=3306
)

cursor = db.cursor(dictionary=True)
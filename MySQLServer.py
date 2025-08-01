import mysql.connector

try :
    mydb = mysql.connector.connect(host ="localhost",user='root', password='Oussama@97970',database="alx_book_store")
    print("the server has been connected sucssufly")
except mysql.connector.Error as e:
    print(e)
try :     
  mycursor = mydb.cursor()
  mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")
  print("Database 'alx_book_store' created successfully!")

except mysql.connector.errors.DatabaseError  :
    print("can't create alx_book_store Database")
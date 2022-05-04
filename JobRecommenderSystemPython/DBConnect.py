import mysql.connector as mycon

def connect() : 
    con=mycon.connect(host='localhost',user='root',password='crosspolo',database='jobsdb')
    return con
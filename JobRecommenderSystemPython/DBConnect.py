import mysql.connector as mycon

def connect() : 
    con=mycon.connect(host='localhost',user='root',password='root',database='jobsdb')
    return con
import csv
from DBConnect import *
import base64

import os
"""
def getScores1(userid='na') : 
    conn = connect()
    #integrated security 
    cursor = conn.cursor() 
    cursor.execute("select id,IQType,compulsorySkills,academicPercentage,optionalSkills,IQTestPercentage from studDecisionTreeInput where userid='"+userid+"'")
    mxid=""
    record = cursor.fetchall()
    final_result = [list(i) for i in record]
    print(final_result)
    lst=[]
    for row in final_result: 
        id=row[0]
        lst.clear()
        lst.append(row[1])
        lst.append(row[2])
        lst.append(row[3])
        lst.append(row[4])
        lst.append(row[5])
        print(id)
        print(lst)
        ypred=DecisionTree.decisionalgo(lst)
        print("pred="+str(ypred[0]))
        pred=str(ypred[0])
        updateReading1(id,pred)
"""
def exportToDat() : 
    conn = connect()
    #integrated security 
    cursor = conn.cursor() 
    cursor.execute("select id,sscMinPercent,hscMinPercent,otherPercent,agelimit,minexperience from clusters")
    mxid=""
    record = cursor.fetchall()
    final_result = [list(i) for i in record]
    print(final_result)
    lst=[]
    """
    with open('outfile.csv','w') as f:
        writer = csv.writer(f)
        for row in final_result:
            writer.writerow(row)
    """
    UPLOAD_DIR=os.getcwd()+"\\Clustering_DataSet\\" 
    with open(UPLOAD_DIR+'outfile.dat','w') as f:
        for row in final_result:  
            f.write(str(row[0])+" ") 
            f.write(str(row[1])+" ")
            f.write(str(row[2])+" ")
            f.write(str(row[3])+" ")
            f.write(str(row[4])+" ") 
            f.write(str(row[5])+"\n")
        
def insertCluster(userid="NA") : 
    conn = connect()    
    cursor = conn.cursor()
    args = [userid]
    args1=cursor.callproc('insertCluster', args)
    print("Return value:", args1)
    #for result in cursor.stored_results():
     #       print(result.fetchall())
    cnt=cursor.rowcount 
    conn.commit()  
         


def updateCluster(id=0,cluster=0) :  
    conn = connect()    
    cursor = conn.cursor()
    args = [id,cluster]
    args1=cursor.callproc('updateCluster', args)
    print("Return value:", args1)
    #for result in cursor.stored_results():
     #       print(result.fetchall())
    cnt=cursor.rowcount 
    conn.commit()  
    #return mxid
 
 
def convertToBase64(message='NA') :
    message_bytes = message.encode('ascii')
    base64_bytes = base64.b64encode(message_bytes)
    base64_message = base64_bytes.decode('ascii')
    print(base64_message)
    return base64_message

def convertFromBase64(base64_message='NA') :
    base64_bytes = base64_message.encode('ascii')
    message_bytes = base64.b64decode(base64_bytes)
    message = message_bytes.decode('ascii')
    print(message)
    return message 


def convertToBase64(message='NA') :
    message_bytes = message.encode('ascii')
    base64_bytes = base64.b64encode(message_bytes)
    base64_message = base64_bytes.decode('ascii')
    print(base64_message)
    return base64_message

def convertFromBase64(base64_message='NA') :
    base64_bytes = base64_message.encode('ascii')
    message_bytes = base64.b64decode(base64_bytes)
    message = message_bytes.decode('ascii')
    print(message)
    return message

#insertCluster('santosh')
#exportToDat()
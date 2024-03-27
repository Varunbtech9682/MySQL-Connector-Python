import mysql.connector
from tabulate import tabulate

con=mysql.connector.connect(host="localhost", username="root", password="2897", database="python_db")

def insert(name, age, city):
    res=con.cursor()
    sql="insert into users (name, age, city) values(%s, %s, %s)"
    user=(name, age, city)
    res.execute(sql, user)
    con.commit()
    print("insrt into table successful")

def update(name, age, city, id):
    res=con.cursor()
    sql="update users set name=%s, age=%s, city=%s where id=%s"
    user=(name, age, city, id)
    res.execute(sql, user)
    updated_rows = res.rowcount
    con.commit()
    if updated_rows == 0:
        print("ID not found.")
    else:
        print("Updated successfully.")

def select():
    res=con.cursor()
    sql="select * from users"
    res.execute(sql)
    result=res.fetchall()
    print(tabulate(result, headers=["sno", "name", "age", "city"]))

def delete(id):
    res=con.cursor()
    sql="delete from users where id=%s"
    user=(id,)
    res.execute(sql, user)
    deleted_rows = res.rowcount
    con.commit()
    if deleted_rows==0:
        print("data not found")
    else:
        print("The data is deleted")


while True:
    print("1. insert \n" 
          "2. update \n"
          "3. select \n"
          "4. delete \n"
          "5. exit ")

    choice=int(input("enter the choice:"))

    if choice==1:
        name=input("enter the name: ")
        age=input("enter the age: ")
        city=input("enter the city: ")
        insert(name, age, city)

    elif choice==2:
        id = input("enter the id: ")
        name=input("enter the name: ")
        age=input("enter the age: ")
        city=input("enter the city: ")
        update(name, age, city, id)

    elif choice==3:
        select()

    elif choice==4:
        id=input("enter the id to delete: ")
        delete(id)

    elif choice==5:
        quit()

    else:
        print("Choice not found, invalid!")

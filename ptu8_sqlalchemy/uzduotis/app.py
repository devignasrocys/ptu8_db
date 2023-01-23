from datetime import datetime
import os
from employe import Employe, engine
from sqlalchemy.orm import sessionmaker

session = sessionmaker(bind=engine)()

def add_employe(name, last_name, birth_date, position,salary, works_from):
    employe = Employe(name, last_name, birth_date, position,salary, works_from)
    session.add(employe)
    session.commit()

def show_all_employes():
    for employe in session.query(Employe).all():
        print(employe)

def update_employe(id, **data):
    employe = session.query(Employe).get(id)
    for column, value in data.items():
        if value:
            setattr(employe, column, value)
    session.commit()
    print(f"{employe} was updated")

def delete_employe(id):
    employe = session.query(Employe).get(id)
    session.delete(employe)
    session.commit()
    print(f"{employe} was deleted.")
    
while True:
    os.system("clear")
    print("==[ MENU ]==")
    print("1: | Add employe")
    print("2: | Show employes")
    print("3: | Update employe")
    print("4: | Delete employe")
    print("0: | Exit")
    choice = input("Select from menu: ")

    if choice == "0":
        break

    elif choice == "1":
        name = input("Name: ")
        last_name = input("Last name: ")
        birth_date = datetime.strptime(input("Birth date: "), "%Y-%m-%d")
        position = input("Position: ")
        salary = float(input("Salary: "))
        works_from = datetime.strptime(input("Works from: "), "%Y-%m-%d")
        add_employe(name, last_name, birth_date, position, salary, works_from)
        input("Press enter to continue...")

    elif choice == "2":
        show_all_employes()
        input("Press enter to continue...")

    elif choice == "3":
        id = int(input("Write id of employe who you wanna update: "))
        data_to_update = {
            "name": input("Name: "),
            "last_name": input("Last name: "),
            "birth_date": input("Birth date: "),
            "position": input("Position: "),
            "salary": input("Salary: "),
            "works_from": input("Works from: "),       
        }
        update_employe(id, **data_to_update)
        input("Press Enter to continue...")

    elif choice == "4":
         id = int(input("Write id of employe who you wanna delete: "))
         delete_employe(id)
         input("Press Enter to continue...")



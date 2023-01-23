from datetime import datetime
from sqlalchemy import Column, Integer, String, Float, DateTime, create_engine
from sqlalchemy.ext.declarative import declarative_base

engine = create_engine('sqlite:///data/employes.db') # vietoj conectoriaus
Base = declarative_base()

class Employe(Base):
    __tablename__ = "Employe"
    id = Column(Integer, primary_key = True)
    name = Column(String)
    last_name = Column(String)
    birth_date = Column(DateTime)
    position = Column(String)
    salary = Column(Integer)
    works_from = Column(DateTime)

    def __init__(self, name, last_name, birth_date, position, salary, works_from):
        self.name = name
        self.last_name = last_name
        self.birth_date = birth_date
        self.position = position
        self.salary = salary
        self.works_from = works_from

    def __repr__(self):
        return f"{self.id}, {self.name}, {self.last_name}, {self.birth_date}, {self.position}, {self.salary}, {self.works_from}"
    
    def __str__(self) -> str:
        return f"{self.id}, {self.name}, {self.last_name}, {self.birth_date}, {self.position}, {self.salary}, {self.works_from}"
    
if __name__ == "__main__":
    Base.metadata.create_all(engine)

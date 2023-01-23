from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from model import Project

engine = create_engine('sqlite:///data/projektai.db')
# Session = sessionmaker(bind=engine)
# session = Session()

session = sessionmaker(bind=engine)()

# CRUD * Create Read Update Delete

# Create / INSERT
# naujas_projektas = Project("Brangus Reikalas", 1200)
# # kitas_projektas = Project("Geras puslapiukas", 5000)
# session.add(naujas_projektas) # uzkomentuota nes jau sukurta, is naujo leidziant sukurs papildomu row'su
# # session.add(kitas_projektas)
# session.commit()

# Read / SELECT
# projektas1 = session.query(Project).get(1) # get nurodomas id
# projektas2 = session.query(Project).filter_by(name="Reikalai").one()
# print(projektas1)
# projektai = session.query(Project).all()
# print(projektai)
# pigus_projektai = session.query(Project).filter(Project.price <= 1200).all() # su filter galima nurodyta salyga pagal ka filtruosim
# print(pigus_projektai)
# reikalai = session.query(Project).filter(Project.name.ilike("%kalai")).all() # filtruoti pagal tai kaip zodis baigiasi %str
# print(reikalai)

# Update
# brangus = session.query(Project).filter(Project.price > 1200).first()
# brangus.price = 10000
# session.commit() # po pakeitimu reiktu coomit visada padaryt
# print(brangus)

# # Delete
# kitas = session.query(Project).filter_by(name="Brangus Reikalas").one()
# session.delete(kitas)
# session.commit()
# projektai = session.query(Project).all()
# print(projektai)



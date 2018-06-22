from importall import *
class offer(db.Model):
   id = db.Column('offer_id', db.Integer, primary_key = True)
   destination = db.Column(db.Integer)
   description = db.Column(db.String(300)) 

   price = db.Column(db.String(200))


def __init__(self, destination, description,photo, price):
   self.destination = destination
   self.description = description
   self.price = price


   
   

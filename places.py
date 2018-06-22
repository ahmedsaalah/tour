from importall import *
class place(db.Model):
   id = db.Column('place_id', db.Integer, primary_key = True)
   destination = db.Column(db.Integer)
   description = db.Column(db.String(100))  
   photo = db.Column(db.String(200))


def __init__(self, destination, description, photo):
   self.destination = destination
   self.description = description
   self.photo = photo

   
   

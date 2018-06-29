from importall import *
class comment(db.Model):
   id = db.Column('comment_id', db.Integer, primary_key = True)
   name = db.Column(db.String(900)) 
   placeId = db.Column(db.Integer) 

   comment = db.Column(db.String(200))


def __init__(self, name,placeId, comment):
   self.name = name
   self.placeId = placeId
   self.comment = comment


   
   

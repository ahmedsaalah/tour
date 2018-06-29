from importall import *
class plan(db.Model):
   id = db.Column('plan_id', db.Integer, primary_key = True)
   user_id = db.Column( db.Integer)
   destination = db.Column(db.String(900)) 
   activities = db.Column(db.String(900))  
   date = db.Column(db.String(200))


def __init__(self, destination, activities, date,user_id):
   self.destination = destination
   self.activities = activities
   self.date = date
   self.user_id = user_id

   
   

from importall import *
class user(db.Model):
   id = db.Column('user_id', db.Integer, primary_key = True)
   fname = db.Column(db.String(100))
   lname = db.Column(db.String(100))  
   email = db.Column(db.String(200))
   password = db.Column(db.String(100))
   Utype = db.Column(db.String(10))

def __init__(self, fname, lname, email, password, Utype="1"):
   self.fname = fname
   self.lname = lname
   self.email = email
   self.password = password
   self.Utype = Utype
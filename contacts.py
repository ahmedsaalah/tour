from importall import *

class contact(db.Model):
   id = db.Column('contact_id', db.Integer, primary_key = True)
   fname = db.Column(db.String(100))
   email = db.Column(db.String(100))  
   subject = db.Column(db.String(100))
   message = db.Column(db.String(500))


def __init__(self, fname, email, subject, message):
   self.fname = fname
   self.email = email
   self.subject = subject
   self.message = message

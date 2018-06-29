from flask import (Flask, render_template, request, redirect,
jsonify, url_for, flash, make_response, session as login_session)
from users import user ,db, app
from werkzeug.utils import secure_filename
from contacts import contact
from places import place
from offers import offer
from comments import comment
from plans import plan 
import os
from pprint import pprint
#upload_file
UPLOAD_FOLDER = 'static/images'
ALLOWED_EXTENSIONS = set(['txt', 'png', 'jpg', 'jpeg', 'gif'])
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

PUBLISHABLE_KEY="pk_test_g6do5S237ekq10r65BnxO6S0"
SECRET_KEY="sk_test_BQokikJOvBiI2HlWgH4olfQ2"

admin = user( fname="AHMED", lname ="Sokar", email="admin@admin.com", password="admin", Utype="0")

db.session.add(admin)
db.session.commit()

normaluser = user( fname="AHMED", lname ="Mohamed", email="user@hotmail.com", password="password",  Utype="1")

db.session.add(normaluser)
db.session.commit()


Cuser = user( fname="company", lname ="name", email="admin@company.com", password="company" , Utype="2")

db.session.add(Cuser)
db.session.commit()



db.create_all()
@app.route('/')
@app.route('/index')
def HomePage():
    """ returns index page """
    return render_template('index.html')
####
####
@app.route('/contactWeb', methods=['POST','GET'])
def contactWeb():

    if 'id' in login_session and login_session.get('type') == "0":
       
        contactsDetails = contact.query.filter_by().all()
        

        return render_template('contactAdmin.html' ,contactsDetails=contactsDetails)

            



    else :
        if request.method == 'POST':
            if 'id' in login_session :
                firstName =login_session["fn"]
                email =login_session["email"]
                firstName =request.form["firstName"]
                email =request.form["email"]
            subject =request.form["subject"]
            message =request.form["message"]
            newContact = contact(fname=firstName , email =email,subject=subject
                            ,message = message )

            db.session.add(newContact)
            db.session.commit()
    
            return redirect(url_for('contactWeb'))
            
        else :
            return render_template('contact.html' )
        """ returns contact page """

@app.route('/login', methods=['POST'])
def login():
    if request.method == 'POST' :
        email =request.form["email"]
        password =request.form["password"]

        TheUser = user.query.filter_by(email=email , password=password).all()[0]
        login_session['id'] = TheUser.id
        login_session['fn'] = TheUser.fname
        login_session['ln'] = TheUser.lname
        login_session['type'] = TheUser.Utype
        login_session['email'] = TheUser.email
        return redirect(url_for('HomePage'))


@app.route('/signup', methods=['POST'])
def signup():
    if request.method == 'POST' :

        email =request.form["email"]
        password =request.form["password"]
        fn =request.form["fn"]
        ln =request.form["ln"]
        newUser = user(fname=fn ,lname=ln, email =email,password=password)

        db.session.add(newUser)
        db.session.commit()
        
        login_session['id'] = TheUser.id
        login_session['fn'] = TheUser.fname
        login_session['ln'] = TheUser.lname
        login_session['email'] = TheUser.email
        login_session['type'] = TheUser.Utype
        


        
        return redirect(url_for('HomePage'))
@app.route('/logout', methods=['GET'])
def logout():
    login_session.clear()
    return redirect(url_for('HomePage'))

@app.route('/uploadDetails', methods=['POST','GET'])
def uploadDetails():
    if 'id' in login_session :
         if login_session.get('type') != "1" : 
            if request.method == 'POST' :
                
                destination =request.form["destination"]
                description =request.form["description"]

                if 'file' in request.files:
                    file = request.files['file']
                    
                
                    filename = secure_filename(file.filename)
                    file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
            
                    
                
                
                
                newPlace = place(destination=destination ,description=description, photo =filename)

                db.session.add(newPlace)
                db.session.commit()
        
            
            
            else :

                return render_template('admin.html' )
    
   

    return redirect(url_for('HomePage'))

####
####
@app.route('/gallery')
def gallery():
    places = place.query.filter_by().all()                                                    
    comments = comment.query.filter_by().all()

    """ returns gallery page """
    return render_template('gallery.html',places=places ,comments =comments)
####
####
@app.route('/plans')
def plans():



    plans = plan.query.filter_by(user_id=login_session[id]).all()
    """ returns destination page """
    return render_template('plans.html',plans=plans)

@app.route('/destination')
def destination():



    places = place.query.filter_by().all()
    """ returns destination page """
    return render_template('destination.html',places=places)
####
####
@app.route('/faq')
def faq():
    """ returns faq page """
    return render_template('faq.html')
####

####
@app.route('/offerspage', methods=['POST','GET'])
def offerspage():
    if request.method == 'POST' :
    
        destination =request.form["destination"]
        description =request.form["description"]
        price =request.form["price"]

        
                        
        newOffer = offer(destination=destination ,description=description, price =price )

        db.session.add(newOffer)
        db.session.commit()
    
        return render_template('offers.html')
    else :

        offers = offer.query.filter_by().all()
        return render_template('offers.html',offers = offers, key=PUBLISHABLE_KEY)

####





@app.route('/charge', methods=['POST'])
def charge():

    amount =request.form["amount"]*100
    customer = stripe.Customer.create(
        email='customer@example.com',
        source=request.form['stripeToken']
    )

    charge = stripe.Charge.create(
        customer=customer.id,
        amount=amount,
        currency='usd',
        description='Flask Charge'
    )

    
    return redirect(url_for('offerspage'))

@app.route('/commentFun', methods=['POST','GET'])
def commentFun():
    if request.method == 'POST' :
    
        comments =request.form["comments"]
        placeId =request.form["placeId"]
        if 'fn' in login_session :
            name =login_session['fn'] + " "+login_session['ln']
        else :
            name ="anon"
                    
        newComment = comment(name=name ,comment=comments, placeId =placeId )

        db.session.add(newComment)
        db.session.commit()
    
        return redirect(url_for('gallery'))

@app.route('/rateFun', methods=['POST','GET'])
def rateFun():
    if request.method == 'POST' :
        placeId =request.form["placeId"]
        rate =request.form["rate"]
        placeObj = place.query.filter_by(id = placeId).all()[0]

        placeObj.count += 1 
        placeObj.star += int(rate)
        
        db.session.commit()  
    return redirect(url_for('gallery'))
@app.route('/planFun', methods=['POST','GET'])
def planFun():
    if request.method == 'POST' :
        activities =request.form["activities"]
        destination =request.form["destination"]
        date =request.form["date"]
        user_id= login_session['id']

        
        newPlan = plan(activities=activities ,destination=destination, date =date ,user_id=user_id)

        db.session.add(newPlan)
        db.session.commit()
    
        return redirect(url_for('plans'))





if __name__ == '__main__':
    app.secret_key = 'A0Zr98j/3yX R~XHH!jJHDmN]LWX/,?RT'
    app.debug = True
    app.run(host='0.0.0.0', threaded = True)
            
            
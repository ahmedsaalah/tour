from flask import (Flask, render_template, request, redirect,
jsonify, url_for, flash, make_response, session as login_session)

app = Flask(__name__)
app.jinja_env.add_extension('jinja2.ext.loopcontrols')

def slugify(text, delim=u'-'):
    """Generates an ASCII-only slug."""
    result = []
    for word in _punct_re.split(text.lower()):    
        if word:
            result.append(word)
    return str(delim.join(result))
####
@app.route('/')
@app.route('/index')
def index():
    """ returns index page """
    return render_template('index.html')
####
####
@app.route('/contact')
def contact():
    """ returns contact page """
    return render_template('contact.html')
####
####
@app.route('/gallery')
def gallery():
    """ returns gallery page """
    return render_template('gallery.html')
####
####
@app.route('/destination')
def destination():
    """ returns destination page """
    return render_template('destination.html')
####
####
@app.route('/pricing')
def pricing():
    """ returns pricing page """
    return render_template('pricing.html')
####

if __name__ == '__main__':
    app.secret_key = 'A0Zr98j/3yX R~XHH!jJHDmN]LWX/,?RT'
    app.debug = True
    app.run(host='0.0.0.0', threaded = True)
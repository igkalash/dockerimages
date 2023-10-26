from flask import Flask

app = Flask(__name__)
   
@app.route('/')

def hello_world():
    
    return 'Hello, World!'



@app.route('/bye')

def bye():
    return 'bye, World!'



@app.route('/username/<name>/<int:number>')

def name(name,number):
    return f"hello {name} ,you are {number}!"

if __name__ == "__main__":
    
    app.run(debug=True)

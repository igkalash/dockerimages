from flask import Flask

app = Flask(__name__)
   
@app.route('/')

def hello_world():
    
    return 'Hello, World!123'



@app.route('/bye')

def bye():
    return 'bye, World123!'



@app.route('/username/<name>/<int:number>')

def name(name,number):
    return f"hello {name} ,you are {number}!"

if __name__ == "__main__":
    
    app.run(host="0.0.0.0", port=5000, debug=True)

from flask import Flask
app = Flask(__name__)

@app.route('/')
def index():
        return 'Bienvenido al curso de telematica'

@app.route('/render')
def render():
        return render_templates ('hello.html')


if __name__=="__main__":
        app.run (host="0.0.0.0", port=8020)


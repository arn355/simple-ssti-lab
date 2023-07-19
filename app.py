from flask import Flask, request, render_template_string, render_template

app = Flask(__name__)

@app.route('/')
def form():
    return render_template('form.html')

@app.route('/', methods=['POST'])
def get_form():
    text = request.form['text']
    output = render_template_string(text)
    return render_template('form.html', submit=True, text=output)

if __name__ == '__main__':
    app.run()
echo github.com/akashdeepmaity4

mkdir -p templates static/css static/js
touch readme.md .gitignore app.py templates/index.html static/css/style.css static/js/main.js 

echo directory structure created!

echo writing the files ...

cat << 'EOF' > app.py
from flask import Flask, render_template, request, redirect, url_for

app = Flask(__name__)

@app.route('/')
def main():
    return render_template("index.html")








if __name__ == '__main__':
    app.run(debug=True)

EOF

echo app.py created! 

cat << 'EOF' > templates/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flask App Boilerplate</title>
    <link rel="stylesheet" href="{{ url_for('static', filename='css/style.css') }}">
</head>
<body>
    <h1>Welcome!</h1>
    <script src="{{ url_for('static', filename='js/main.js') }}"></script>
</body>
</html>
EOF

echo templates/index.html created!

cat << 'EOF' > static/css/style.css
body {
    background-color: #f4f4f9;
    font-family: Arial, sans-serif;
    text-align: center;
    margin-top: 50px;
}

h1 {
    color: #333333;
}

p {
    color: #666666;
    font-size: 1.1em;
}
EOF

echo static/css/style.css created!

cat << 'EOF' > .gitignore
*.pyc
__pycache__
*.py[cod]
*$py.class
venv/
.venv/
.env
.DS_Store
.vscode/
.idea/
EOF

echo .gitignore created!

cat << 'EOF' > static/js/main.js
console.log("Hello World!");
EOF

echo static/js/main.js created!
from flask import Flask
import socket
app = Flask(__name__)

@app.route('/')
def host_info():
	return "Your current server is " + socket.gethostname()

if __name__ == '__main__':
	app.run(host='0.0.0.0',port=8080)

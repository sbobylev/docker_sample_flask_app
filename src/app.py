from flask import Flask, request, jsonify
import socket
app = Flask(__name__)

@app.route('/')
def host_info():
	return jsonify(container_id=socket.gethostname(), 
                       client_address=request.remote_addr)

if __name__ == '__main__':
	app.run(host='0.0.0.0',port=8080)

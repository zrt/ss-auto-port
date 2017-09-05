#! python3

from flask import Flask
import os
app = Flask('hook')

@app.route('/update-port-233/',methods=['GET'])
def update():
	os.system('ruby /root/hhh/client.rb')
	return 'OK'
if __name__ == '__main__':
	app.run(host="0.0.0.0",port=14433)

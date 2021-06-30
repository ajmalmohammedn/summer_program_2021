import re
import boto3
import botocore
import paramiko
from flask import Flask, request, render_template
from flask_cors import CORS , cross_origin


app = Flask('Docker')
cors = CORS(app, resources={r"/*": {"origins": "*"}})
key = paramiko.RSAKey.from_private_key_file('/root/RHEL8.pem')
client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(hostname="ec2-13-233-229-206.ap-south-1.compute.amazonaws.com", username="ec2-user", pkey=key)
 
@app.route('/pod', methods=['GET', 'POST'])
@cross_origin()
def run():
    get = request.args.get("x")  
    stdin, stdout, stderr = client.exec_command(f"sudo {get}")#f'sudo kubectl create deployment {d_name} --image={img_name} --replicas={int(rep)}')
    return(stdout.read())
  
  

app.run(host='localhost',port=3487,debug=True)
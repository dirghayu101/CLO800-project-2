# Requirements:
- The first is the creation of a secure connection for each employee to connect to the Azure network. This will 
require the deployment of a secure VPN tunnel.  
- The second component is the creation of a backup plan to ensure each employee’s data are backed up on the 
Cloud regularly. Specifically, you must schedule backups to occur every Friday at 10:59 PM, with a retention 
period of two weeks. Additionally, you must schedule backups to occur at the end of each month, with a 
retention period of six months.
- Resource group named <StudentName>-s243-RG, where StudentName is your name. 
- Assigned CIDR Block: 172.16.111.0/24
- From the Azure environment, create a scheduled backup plan to back up the <StudentID>-Files folder 
every Friday at 10:59 PM and at the end of each month with a retention of two weeks and six 
months, respectively.
- To verify your solution, you can manually back up files from the <yourname> folder to the Cloud and then 
restore files from the Cloud directly to the "Restored files" folder.


# Commands Not Used (were going to):
- openssl req -x509 -newkey rsa:4096 -keyout P2SRootKey.pem -out P2SRootCert.pem -days 365 -nodes -subj "/CN=RootCert"
- openssl genpkey -algorithm RSA -out P2SClientKey.pem
- openssl req -new -key P2SClientKey.pem -out P2SClientReq.csr -subj "/CN=ClientCert"
- openssl x509 -req -in P2SClientReq.csr -CA P2SRootCert.pem -CAkey P2SRootKey.pem -CAcreateserial -out P2SClientCert.pem -days 365

# Troubleshooting commands for version compatibility with azure (not used):
- openssl x509 -in P2SRootCert.pem -outform der -out P2SRootCert.cer
- openssl x509 -inform PEM -in P2SRootCert.pem -outform DER -out P2SRootCert.cer


# Certificate generation command:
Ref: https://learn.microsoft.com/en-us/azure/vpn-gateway/point-to-site-certificates-linux-openssl
- openssl genrsa -out caKey.pem 2048
- openssl req -x509 -new -nodes -key caKey.pem -subj "/CN=VPN CA" -days 3650 -out caCert.pem
- openssl x509 -in caCert.pem -outform der | base64  && echo
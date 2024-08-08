As the Cloud administrator at your company, you are responsible for ensuring that all employees' critical data 
is safely backed up to the Cloud. Since most employees work remotely, you need to create a solution that 
allows for secure connections to the Azure network gateway through a VPN (virtual private networks) tunnel 
and a separate folder share for each employee. 

Your project outcome should include two main components.  
The first is the creation of a secure connection for each employee to connect to the Azure network. This will 
require the deployment of a secure VPN tunnel.  

The second component is the creation of a backup plan to ensure each employee’s data are backed up on the 
Cloud regularly. Specifically, you must schedule backups to occur every Friday at 10:59 PM, with a retention 
period of two weeks. Additionally, you must schedule backups to occur at the end of each month, with a 
retention period of six months. 
 
To start your project, here are some suggested steps.  
1. Create a resource group named <StudentName>-s243-RG, where StudentName is your name. 
2. Create your VNet in Azure using your assigned IP address space. 
3. Implement a Peer-to-Site (P2S) VPN tunnel connection between a remote computer and the Cloud 
network. For the remote computer, you can either use your personal computer or create a VM in a 
different region and use it as the remote computer. 
4. Create a file share on Cloud and map it to drive Z on your remote computer. 
5. Create two folders on drive Z as shown in the diagram and copy some files to the folder that has your 
name. 
6. From the Azure environment, create a scheduled backup plan to back up the <StudentID>-Files folder 
every Friday at 10:59 PM and at the end of each month with a retention of two weeks and six 
months, respectively. 
To verify your solution, you can manually back up files from the <yourname> folder to the Cloud and then 
restore files from the Cloud directly to the "Restored files" folder. It is important to note that all 
backup/restore configurations must be done centrally from the Cloud for all users, not from remote 
computers.
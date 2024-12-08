# linux | terminal | network | setup x | service mesh



# 63 cheat sheet
[参考](https://medium.com/@vinodhakumara2681997/cheatsheet-linux-commands-for-devops-80be32b88656)

## System Info Commands
- **id** This is used to find out user and group names and numeric ID's(UID or group ID) of the current user or any other in the server. **example: id -u root**
- **cd** change directory: navigate to a different directory. **example: cd /home/user/documents**
- **pwd** print working directory: display the current directory's full path. **pwd**
- **mkidr** make directory: create a new directory **mkdir new_folder**
- **rm** remove: delete files or directories **example: rm file.txt**
- **cp** copy: copy files or directories. **example: cp file.txt /backup**
- **mv** move: move files or directories. **example: mv file.txt /new_location**
- **touch** create empty file: create a new empty file. **example: touch new_file.txt**
- **cat** concatenate and display: view the content of a file. **example: cat file.txt**
- **nano** text editor: open a text file for editing. **example: nano file.txt**
- **grep** search text: search for text patterns in files. **example: grep "pattern" file.txt**
- **find** search files and directories: search for files and directories. **example: /path/to/search -name "file_name"**
- **chmod** change file permissions: modify file permissions. **example: chmod 755 file.sh**
- **chown** change ownership: change the owner and group of a file or directory. **example: user:group file.txt**
- **ps** process status: display running processes **example: ps aux**
- **top** monitor system activity: monitor system processes in real-time. **example: top**
- **kill** terminate processes: terminate a process using it's id. also can use **pkill** to terminate processes based on their name or other attributes. **example: kill PID; pkill process_name**
- **wget** download files: download files from the internet. **example: wget https://example.com/file.zip**
- **less** to view the contents of a file one screen at a time, allowing for easy navigation and search within the file. **example: less text.log**
- **tar** archive and extract: create or extract compressed archive files. **example: tar -czvf achive.tar.gz folder**
- **ssh** secure shell: connect to a remote server securely. **example: ssh user@remote_host**
- **rsync** remote sync: synchronize files and directories between systems. **example: rsync -avz local_folder/ user@remote_host:remote_folder/**
- **df** disk free space: display disk space usage. **df -h**
- **du** disk usage: show the size of files and directories. **example: du -sh /path/to/directory**
- **ifconfig** network configuration: display or configure network interfaces (**deprecated,use ip**)
- **ip** ip configuration: manage ip addresses and network settings. **example: ip addr show**
- **netstat** network statistics: display network connections and statistics(**deprecated, use ss**) **example: netstat -tuln**
- **systemctl** system control: manage system services using systemd. **example: systemctl start service_name**
- **journalctl** systemd journal: view system logs using systemd's journal **journalctl -u service_name**
- **free** this command displays the total amount of free space available. **free -m**
-  **at** execute commands later: run commands at a specified time **example: echo "command" | at 15:30**
- **ping** network connectivity: check network connectivity to a host. **example: ping google.com**
- **traceroute** trace route: trace the route packets take to reach a host. **traceroute google.com**
- **curl** check website connectivity: check if a website is up **example: curl -Is https://example.com | head -n 1**
- **dig** domain information groper: retrieve DNS information for domain. **example: dig example.com**
- **hostname** display or set hostname: display or change the system's hostname. **example: hostname**
- **who** display users: display currently logged-in users. **who**
- **useradd** add user: create a new user account. **example: useradd newuser**
- **usermod** modify user: modify user account properties. **example: usermod -aG groupname username**
- **passwd** change password: change user password. **example: passwd username**
- **sudo** superuser do: execute commands as the superuser. **example: sudo command**
- **lsof** list open files: list open files and processes using them. **example: lsof -i :port**
- **nc** netcat: networking utility to read and write data across netowrk connections **echo "hello" | nc host port**
- **scp** secure copy between hosts: copy files securely between hosts. **example: scp file.txt user@remote_host:/path**
- **sed** stream editor: text manipulation using regex. **example: sed 's/old/new/g' file.txt**
- **awk** text processing: pattern scanning and text processing. **awk '{print $2}' file.txt**
- **cut** text column extraction: extract specific columns from text. **example: cut -d"," -f2 file.csv**
- **sort** sort lines: sort lines of text files. **example: sort file.txt**
- **diff** file comparison: compare two files and show differences. **example: diff file1.txt file2.txt**
- **ls** list files and directories: list the contents ao a directory. **example: ls -la**
- **history** this command is used to view the previously executed command. **example: history 10**
- **cron** schedule tasks: manage scheduled tasks **example: crontab -e**
- **ssh-keygen** this command is used to generate a public/private authentication key pair. this process of authentication allows the user to connect remote server without providing a password.**example: ssh-keygen**
- **nslookup** this stands for "name server lookup". this is a tool for checking dns hostname to ip or ip to hostname. this is very helpful while troubleshooting. **example: nslookup google.com**
- **tr** for translating or deleting characters.
these commands cover a wide range fo tasks that are essentical for devops professinals working with linux systems. remenber to always refer to man page(man command) for more detaild infommation about each comand and it's option 
**example: cat crazy.txt | tr "[a-z]" "[A-Z]"
- **tnc** this is "test network connection" command. mostly used command while troubleshooting. it display diagnostic information for a connection. **example: tnc google.com --port 443**
- **w** display current user
- **su** switch user **example: su - root**
- **ac(all connections)** total connect time for all users or specified users. **example: ac john**
- **tail** displays the last part of a file, commonly used to monitor logs in real-time. **example: tail monitor.logs**
- **head** display the first part of a file, often used to quickly see the beginning of a file's content **example: head content.txt**
- **ip route** To show or manipulate the IP routing table. Shows clear ip tables rules.
**Example: ip rout**

## File Commands

## File Permission Commands

## User Management Commands

## Group Management Commands

## Searching Commands

## GREP Command — Global Regular Expression Print

## Hardware Infomation Commands

## Connection To Remote System

## Network Commands

## Process Information Commands

## Archiving File Commands

## Ubuntu Package related Commands


## Directory Commands

## Misc Commands
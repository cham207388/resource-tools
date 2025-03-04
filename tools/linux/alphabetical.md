# Table of Contents

1. [Linux Commands from A to E](#linux-commands-from-a-to-e)
2. [Linux Commands from F to J](#linux-commands-from-f-to-j)
3. [Linux Commands from K to O](#linux-commands-from-k-to-o)
4. [Linux Commands from P to S](#linux-commands-from-p-to-s)
5. [Linux Commands from T to Z](#linux-commands-from-t-to-z)

## Linux Commands from A to E

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `alias` | Creates an alias for a command | `alias ll='ls -la'`<hr/>`alias grep='grep --color=auto'`<hr/>`alias cls=clear`<hr/>`alias update='sudo apt-get update'` |
| `apt-get` | APT package handling utility | `sudo apt-get update`<hr/>`sudo apt-get upgrade`<hr/>`sudo apt-get install <package>`<hr/>`sudo apt-get remove <package>` |
| `awk` | Pattern scanning and processing language | `awk '{print $1}' file.txt`<hr/>`awk '/pattern/ {print $0}' file.txt`<hr/>`awk 'BEGIN {print "Header"} {print $1} END {print "Footer"}' file.txt`<hr/>`awk -F: '{print $1}' /etc/passwd` |
| `basename` | Strips directory and suffix from filenames | `basename /path/to/file`<hr/>`basename /path/to/file .txt`<hr/>`basename /usr/local/bin/command`<hr/>`basename /usr/local/bin/command.sh .sh` |
| `cat` | Concatenates and displays files | `cat file.txt`<hr/>`cat file1.txt file2.txt`<hr/>`cat file.txt` \| grep "pattern"`<hr/>`cat > newfile.txt` |
| `cd` | Changes the current directory | `cd /home/user`<hr/>`cd ..`<hr/>`cd -`<hr/>`cd /var/log` |
| `chgrp` | Changes group ownership | `chgrp group file.txt`<hr/>`chgrp -R group directory/`<hr/>`chgrp group1:group2 file.txt`<hr/>`chgrp --reference=ref_file file.txt` |
| `chmod` | Changes file permissions | `chmod 755 file.txt`<hr/>`chmod -R 755 directory/`<hr/>`chmod u+x script.sh`<hr/>`chmod g-w file.txt` |
| `chown` | Changes file owner and group | `chown user file.txt`<hr/>`chown user:group file.txt`<hr/>`chown -R user directory/`<hr/>`chown --reference=ref_file file.txt` |
| `cmp` | Compares two files byte by byte | `cmp file1 file2`<hr/>`cmp -l file1 file2`<hr/>`cmp --silent file1 file2`<hr/>`cmp -n 10 file1 file2` |
| `cp` | Copies files and directories | `cp file1 file2`<hr/>`cp -r dir1 dir2`<hr/>`cp -p file1 file2`<hr/>`cp --verbose file1 file2` |
| `crontab` | Schedules commands to run at specified times | `crontab -e`<hr/>`crontab -l`<hr/>`crontab -r`<hr/>`crontab -u user -e` |
| `curl` | Transfers data from or to a server | `curl http://example.com`<hr/>`curl -o file.txt http://example.com/file.txt`<hr/>`curl -I http://example.com`<hr/>`curl -u user:pass http://example.com` |
| `cut` | Removes sections from each line of files | `cut -d':' -f1 /etc/passwd`<hr/>`cut -c1-10 file.txt`<hr/>`cut -f1,3 file.txt`<hr/>`cut -d',' -f2- file.csv` |
| `df` | Reports file system disk space usage | `df -h`<hr/>`df -k`<hr/>`df --total`<hr/>`df -i` |
| `diff` | Compares files line by line | `diff file1 file2`<hr/>`diff -u file1 file2`<hr/>`diff -c file1 file2`<hr/>`diff -r dir1 dir2` |
| `du` | Estimates file space usage | `du -h`<hr/>`du -sh`<hr/>`du -a`<hr/>`du --max-depth=1` |
| `echo` | Displays a line of text | `echo "Hello World"`<hr/>`echo $HOME`<hr/>`echo "Value: $VAR"`<hr/>`echo -n "No newline"` |
| `env` | Displays the environment or runs a command in a modified environment | `env`<hr/>`env VAR=value command`<hr/>`env -u VAR`<hr/>`env -i /bin/sh` |
| `exit` | Exits the shell | `exit`<hr/>`exit 1`<hr/>`exit 0`<hr/>`exit $?` |
| `export` | Sets environment variables | `export VAR=value`<hr/>`export PATH=$PATH:/new/path`<hr/>`export VAR1=value1 VAR2=value2`<hr/>`export -p` |

## Linux Commands from F to J

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `find` | Searches for files in a directory hierarchy | `find / -name "file.txt"`<hr/>`find /home -user username`<hr/>`find /var -type f -name "*.log"`<hr/>`find / -mtime -1` <hr/> `find ~/develop/ -name "kubernetes.md" -print 2>/dev/null` |
| `finger` | User information lookup program | `finger`<hr/>`finger username`<hr/>`finger -l username`<hr/>`finger -s` |
| `free` | Displays the amount of free and used memory in the system | `free`<hr/>`free -h`<hr/>`free -m`<hr/>`free -g` |
| `grep` | Searches for patterns in files | `grep "pattern" file.txt`<hr/>`grep -r "pattern" /path`<hr/>`grep -i "pattern" file.txt`<hr/>`grep -n "pattern" file.txt` |
| `groupadd` | Adds a new group | `sudo groupadd groupname`<hr/>`sudo groupadd -g 1001 groupname`<hr/>`sudo groupadd -f groupname`<hr/>`sudo groupadd -r groupname` |
| `groupdel` | Deletes a group | `sudo groupdel groupname`<hr/>`sudo groupdel -f groupname`<hr/>`sudo groupdel -r groupname`<hr/>`sudo groupdel --force groupname` |
| `groupmod` | Modifies a group | `sudo groupmod -n newgroupname oldgroupname`<hr/>`sudo groupmod -g 1002 groupname`<hr/>`sudo groupmod -p password groupname`<hr/>`sudo groupmod -A user1,user2 groupname` |
| `gzip` | Compresses files | `gzip file.txt`<hr/>`gzip -d file.txt.gz`<hr/>`gzip -r /path/to/dir`<hr/>`gzip -l file.txt.gz` |
| `head` | Outputs the first part of files | `head file.txt`<hr/>`head -n 10 file.txt`<hr/>`head -c 100 file.txt`<hr/>`head -v file.txt` |
| `history` | Displays the command history | `history`<hr/>`history | grep "pattern"`<hr/>`history -c`<hr/>`history -d 100` |
| `hostname` | Shows or sets the system's hostname | `hostname`<hr/>`hostname new-hostname`<hr/>`hostname -i`<hr/>`hostname -d` |
| `htop` | Interactive process viewer | `htop`<hr/>`htop -u username`<hr/>`htop -p PID`<hr/>`htop -s PERCENT_CPU` |
| `ifconfig` | Configures network interfaces | `ifconfig`<hr/>`ifconfig eth0 up`<hr/>`ifconfig eth0 down`<hr/>`ifconfig eth0 192.168.1.100` |
| `iptables` | Administration tool for IPv4 packet filtering and NAT | `sudo iptables -L`<hr/>`sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT`<hr/>`sudo iptables -D INPUT -p tcp --dport 22 -j ACCEPT`<hr/>`sudo iptables -F` |
| `iwconfig` | Configures wireless network interfaces | `iwconfig`<hr/>`iwconfig wlan0 essid "network_name"`<hr/>`iwconfig wlan0 key s:password`<hr/>`iwconfig wlan0 mode Managed` |
| `jobs` | Lists active jobs | `jobs`<hr/>`jobs -l`<hr/>`jobs -p`<hr/>`jobs -n` |
| `join` | Joins lines of two files on a common field | `join file1.txt file2.txt`<hr/>`join -1 1 -2 2 file1.txt file2.txt`<hr/>`join -t: file1.txt file2.txt`<hr/>`join -v 1 file1.txt file2.txt` |
| `journalctl` | Queries and displays messages from the journal | `journalctl`<hr/>`journalctl -u service_name`<hr/>`journalctl --since "1 hour ago"`<hr/>`journalctl -f` |

## Linux Commands from K to O

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `kill` | Sends a signal to a process | `kill PID`<hr/>`kill -9 PID`<hr/>`kill -SIGTERM PID`<hr/>`kill -l` |
| `killall` | Kills processes by name | `killall processname`<hr/>`killall -9 processname`<hr/>`killall -u username`<hr/>`killall -v processname` |
| `less` | Views file contents one screen at a time | `less file.txt`<hr/>`less +F file.txt`<hr/>`less -N file.txt`<hr/>`less +/pattern file.txt` |
| `ln` | Creates hard and symbolic links | `ln file1 file2`<hr/>`ln -s file1 linkname`<hr/>`ln -f file1 linkname`<hr/>`ln -b file1 linkname` |
| `locate` | Finds files by name | `locate file.txt`<hr/>`locate -i file.txt`<hr/>`locate "*.txt"`<hr/>`locate -c file.txt` |
| `login` | Begins a new session on the system | `login`<hr/>`login user`<hr/>`login --help`<hr/>`login -p` |
| `logout` | Ends the current session | `logout`<hr/>`logout --help`<hr/>`logout -f`<hr/>`logout -l` |
| `lsof` | Lists open files | `lsof`<hr/>`lsof -i`<hr/>`lsof /path/to/file`<hr/>`lsof -u username` |
| `ls` | Lists directory contents | `ls`<hr/>`ls -la`<hr/>`ls -lh`<hr/>`ls -a` |
| `lsblk` | Lists information about block devices | `lsblk`<hr/>`lsblk -f`<hr/>`lsblk -o NAME,SIZE`<hr/>`lsblk -d` |
| `man` | Displays the manual pages | `man ls`<hr/>`man -k keyword`<hr/>`man -f command`<hr/>`man -P cat ls` |
| `md5sum` | Computes and checks MD5 message digest | `md5sum file.txt`<hr/>`md5sum -c file.md5`<hr/>`md5sum --quiet file.txt`<hr/>`md5sum -t file.txt` |
| `mkdir` | Creates directories | `mkdir newdir`<hr/>`mkdir -p newdir/subdir`<hr/>`mkdir -m 755 newdir`<hr/>`mkdir --verbose newdir` |
| `mount` | Mounts a filesystem | `mount /dev/sda1 /mnt`<hr/>`mount -t ext4 /dev/sda1 /mnt`<hr/>`mount -o ro /dev/sda1 /mnt`<hr/>`mount -a` |
| `mv` | Moves or renames files and directories | `mv file1 file2`<hr/>`mv file /new/location`<hr/>`mv -i file1 file2`<hr/>`mv -u file1 file2` |
| `nano` | Simple text editor in a terminal | `nano file.txt`<hr/>`nano +line,file.txt`<hr/>`nano -B file.txt`<hr/>`nano -m file.txt` |
| `netstat` | Network statistics | `netstat`<hr/>`netstat -tuln`<hr/>`netstat -a`<hr/>`netstat -r` |
| `nice` | Runs a command with modified scheduling priority | `nice command`<hr/>`nice -n 10 command`<hr/>`nice --adjustment=5 command`<hr/>`nice -n -5 command` |
| `nl` | Numbers lines of files | `nl file.txt`<hr/>`nl -b a file.txt`<hr/>`nl -s ':' file.txt`<hr/>`nl -n ln file.txt` |
| `nmap` | Network exploration tool and security scanner | `nmap 192.168.1.1`<hr/>`nmap -sP 192.168.1.0/24`<hr/>`nmap -A 192.168.1.1`<hr/>`nmap -p 22,80 192.168.1.1` |
| `nohup` | Runs a command immune to hangups | `nohup command &`<hr/>`nohup command > output.log &`<hr/>`nohup -p PID`<hr/>`nohup command --help` |
| `nslookup` | Queries Internet name servers interactively | `nslookup example.com`<hr/>`nslookup`<hr/>`nslookup -query=A example.com`<hr/>`nslookup -timeout=10 example.com` |
| `passwd` | Changes user password | `passwd`<hr/>`passwd username`<hr/>`passwd -d username`<hr/>`passwd --status username` |
| `ping` | Sends ICMP ECHO_REQUEST to network hosts | `ping example.com`<hr/>`ping -c 4 example.com`<hr/>`ping -i 0.5 example.com`<hr/>`ping -s 100 example.com` |
| `ps` | Reports a snapshot of current processes | `ps`<hr/>`ps aux`<hr/>`ps -ef`<hr/>`ps -u username` |
| `pwd` | Prints the current working directory | `pwd`<hr/>`pwd -L`<hr/>`pwd -P`<hr/>`pwd --help` |
| `reboot` | Reboots the system | `reboot`<hr/>`reboot -f`<hr/>`reboot -p`<hr/>`reboot --help` |
| `rm` | Removes files or directories | `rm file.txt`<hr/>`rm -r directory`<hr/>`rm -f file.txt`<hr/>`rm -i file.txt` |
| `rmdir` | Removes empty directories | `rmdir directory`<hr/>`rmdir --ignore-fail-on-non-empty directory`<hr/>`rmdir -p directory/subdirectory`<hr/>`rmdir -v directory` |
| `scp` | Secure copy (remote file copy program) | `scp file.txt user@remote:/path`<hr/>`scp -r directory user@remote:/path`<hr/>`scp user@remote:/path/file.txt .`<hr/>`scp -P 2222 file.txt user@remote:/path` |
| `sed` | Stream editor for filtering and transforming text | `sed 's/old/new/g' file.txt`<hr/>`sed -n 'p' file.txt`<hr/>`sed '1d' file.txt`<hr/>`sed -e 's/old/new/' -e 's/foo/bar/' file.txt` |
| `shutdown` | Brings the system down | `shutdown now`<hr/>`shutdown -h +10`<hr/>`shutdown -r now`<hr/>`shutdown -c` |
| `sleep` | Delays for a specified amount of time | `sleep 5`<hr/>`sleep 1m`<hr/>`sleep 1h`<hr/>`sleep --help` |
| `sort` | Sorts lines of text files | `sort file.txt`<hr/>`sort -r file.txt`<hr/>`sort -n file.txt`<hr/>`sort -k 2 file.txt` |
| `ssh` | OpenSSH remote login client | `ssh user@remote`<hr/>`ssh -p 2222 user@remote`<hr/>`ssh -i keyfile user@remote`<hr/>`ssh -L localport:remote:remoteport user@remote` |
| `stat` | Displays file or file system status | `stat file.txt`<hr/>`stat -f file.txt`<hr/>`stat --format=%A file.txt`<hr/>`stat --printf="%s" file.txt` |
| `tail` | Outputs the last part of files | `tail file.txt`<hr/>`tail -n 10 file.txt`<hr/>`tail -f file.txt`<hr/>`tail -c 100 file.txt` |
| `tar` | Archives files | `tar -cvf archive.tar file1 file2`<hr/>`tar -xvf archive.tar`<hr/>`tar -tvf archive.tar`<hr/>`tar -czvf archive.tar.gz file1 file2` |
| `top` | Displays Linux tasks | `top`<hr/>`top -u username`<hr/>`top -p PID`<hr/>`top -n 1` |
| `touch` | Changes file timestamps or creates empty files | `touch file.txt`<hr/>`touch -c file.txt`<hr/>`touch -d "2023-01-01" file.txt`<hr/>`touch -t 202301011200 file.txt` |
| `tr` | Translates or deletes characters | `tr 'a-z' 'A-Z'`<hr/>`tr -d '[:digit:]'`<hr/>`tr -s ' '`<hr/>`tr '[:lower:]' '[:upper:]'` |
| `uname` | Prints system information | `uname`<hr/>`uname -a`<hr/>`uname -r`<hr/>`uname -s` |

## Linux Commands from K to N

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `kill` | Sends a signal to a process | `kill PID`<hr/>`kill -9 PID`<hr/>`kill -SIGTERM PID`<hr/>`kill -l` |
| `killall` | Kills processes by name | `killall processname`<hr/>`killall -9 processname`<hr/>`killall -u username`<hr/>`killall -v processname` |
| `less` | Views file contents one screen at a time | `less file.txt`<hr/>`less +F file.txt`<hr/>`less -N file.txt`<hr/>`less +/pattern file.txt` |
| `ln` | Creates hard and symbolic links | `ln file1 file2`<hr/>`ln -s file1 linkname`<hr/>`ln -f file1 linkname`<hr/>`ln -b file1 linkname` |
| `locate` | Finds files by name | `locate file.txt`<hr/>`locate -i file.txt`<hr/>`locate "*.txt"`<hr/>`locate -c file.txt` |
| `login` | Begins a new session on the system | `login`<hr/>`login user`<hr/>`login --help`<hr/>`login -p` |
| `logout` | Ends the current session | `logout`<hr/>`logout --help`<hr/>`logout -f`<hr/>`logout -l` |
| `lsof` | Lists open files | `lsof`<hr/>`lsof -i`<hr/>`lsof /path/to/file`<hr/>`lsof -u username` |
| `ls` | Lists directory contents | `ls`<hr/>`ls -la`<hr/>`ls -lh`<hr/>`ls -a` |
| `lsblk` | Lists information about block devices | `lsblk`<hr/>`lsblk -f`<hr/>`lsblk -o NAME,SIZE`<hr/>`lsblk -d` |
| `man` | Displays the manual pages | `man ls`<hr/>`man -k keyword`<hr/>`man -f command`<hr/>`man -P cat ls` |
| `md5sum` | Computes and checks MD5 message digest | `md5sum file.txt`<hr/>`md5sum -c file.md5`<hr/>`md5sum --quiet file.txt`<hr/>`md5sum -t file.txt` |
| `mkdir` | Creates directories | `mkdir newdir`<hr/>`mkdir -p newdir/subdir`<hr/>`mkdir -m 755 newdir`<hr/>`mkdir --verbose newdir` |
| `mount` | Mounts a filesystem | `mount /dev/sda1 /mnt`<hr/>`mount -t ext4 /dev/sda1 /mnt`<hr/>`mount -o ro /dev/sda1 /mnt`<hr/>`mount -a` |
| `mv` | Moves or renames files and directories | `mv file1 file2`<hr/>`mv file /new/location`<hr/>`mv -i file1 file2`<hr/>`mv -u file1 file2` |
| `nano` | Simple text editor in a terminal | `nano file.txt`<hr/>`nano +line,file.txt`<hr/>`nano -B file.txt`<hr/>`nano -m file.txt` |
| `netstat` | Network statistics | `netstat`<hr/>`netstat -tuln`<hr/>`netstat -a`<hr/>`netstat -r` |
| `nice` | Runs a command with modified scheduling priority | `nice command`<hr/>`nice -n 10 command`<hr/>`nice --adjustment=5 command`<hr/>`nice -n -5 command` |
| `nl` | Numbers lines of files | `nl file.txt`<hr/>`nl -b a file.txt`<hr/>`nl -s ':' file.txt`<hr/>`nl -n ln file.txt` |
| `nmap` | Network exploration tool and security scanner | `nmap 192.168.1.1`<hr/>`nmap -sP 192.168.1.0/24`<hr/>`nmap -A 192.168.1.1`<hr/>`nmap -p 22,80 192.168.1.1` |
| `nohup` | Runs a command immune to hangups | `nohup command &`<hr/>`nohup command > output.log &`<hr/>`nohup -p PID`<hr/>`nohup command --help` |
| `nslookup` | Queries Internet name servers interactively | `nslookup example.com`<hr/>`nslookup`<hr/>`nslookup -query=A example.com`<hr/>`nslookup -timeout=10 example.com` |

## Linux Commands from P to S

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `passwd` | Changes user password | `passwd`<hr/>`passwd username`<hr/>`passwd -d username`<hr/>`passwd --status username` |
| `ping` | Sends ICMP ECHO_REQUEST to network hosts | `ping example.com`<hr/>`ping -c 4 example.com`<hr/>`ping -i 0.5 example.com`<hr/>`ping -s 100 example.com` |
| `ps` | Reports a snapshot of current processes | `ps`<hr/>`ps aux`<hr/>`ps -ef`<hr/>`ps -u username` |
| `pwd` | Prints the current working directory | `pwd`<hr/>`pwd -L`<hr/>`pwd -P`<hr/>`pwd --help` |
| `reboot` | Reboots the system | `reboot`<hr/>`reboot -f`<hr/>`reboot -p`<hr/>`reboot --help` |
| `rm` | Removes files or directories | `rm file.txt`<hr/>`rm -r directory`<hr/>`rm -f file.txt`<hr/>`rm -i file.txt` |
| `rmdir` | Removes empty directories | `rmdir directory`<hr/>`rmdir --ignore-fail-on-non-empty directory`<hr/>`rmdir -p directory/subdirectory`<hr/>`rmdir -v directory` |
| `scp` | Secure copy (remote file copy program) | `scp file.txt user@remote:/path`<hr/>`scp -r directory user@remote:/path`<hr/>`scp user@remote:/path/file.txt .`<hr/>`scp -P 2222 file.txt user@remote:/path` |
| `sed` | Stream editor for filtering and transforming text | `sed 's/old/new/g' file.txt`<hr/>`sed -n 'p' file.txt`<hr/>`sed '1d' file.txt`<hr/>`sed -e 's/old/new/' -e 's/foo/bar/' file.txt` |
| `shutdown` | Brings the system down | `shutdown now`<hr/>`shutdown -h +10`<hr/>`shutdown -r now`<hr/>`shutdown -c` |
| `sleep` | Delays for a specified amount of time | `sleep 5`<hr/>`sleep 1m`<hr/>`sleep 1h`<hr/>`sleep --help` |
| `sort` | Sorts lines of text files | `sort file.txt`<hr/>`sort -r file.txt`<hr/>`sort -n file.txt`<hr/>`sort -k 2 file.txt` |
| `ssh` | OpenSSH remote login client | `ssh user@remote`<hr/>`ssh -p 2222 user@remote`<hr/>`ssh -i keyfile user@remote`<hr/>`ssh -L localport:remote:remoteport user@remote` |
| `stat` | Displays file or file system status | `stat file.txt`<hr/>`stat -f file.txt`<hr/>`stat --format=%A file.txt`<hr/>`stat --printf="%s" file.txt` |

## Linux Commands from T to Z

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `tail` | Outputs the last part of files | `tail file.txt`<hr/>`tail -n 10 file.txt`<hr/>`tail -f file.txt`<hr/>`tail -c 100 file.txt` |
| `tar` | Archives files | `tar -cvf archive.tar file1 file2`<hr/>`tar -xvf archive.tar`<hr/>`tar -tvf archive.tar`<hr/>`tar -czvf archive.tar.gz file1 file2` |
| `top` | Displays Linux tasks | `top`<hr/>`top -u username`<hr/>`top -p PID`<hr/>`top -n 1` |
| `touch` | Changes file timestamps or creates empty files | `touch file.txt`<hr/>`touch -c file.txt`<hr/>`touch -d "2023-01-01" file.txt`<hr/>`touch -t 202301011200 file.txt` |
| `tr` | Translates or deletes characters | `tr 'a-z' 'A-Z'`<hr/>`tr -d '[:digit:]'`<hr/>`tr -s ' '`<hr/>`tr '[:lower:]' '[:upper:]'` |
| `uname` | Prints system information | `uname`<hr/>`uname -a`<hr/>`uname -r`<hr/>`uname -s` |
| `uniq` | Removes duplicate lines from sorted files | `uniq file.txt`<hr/>`uniq -c file.txt`<hr/>`uniq -d file.txt`<hr/>`uniq -u file.txt` |
| `updatedb` | Updates the database used by `locate` | `sudo updatedb`<hr/>`updatedb --prunepaths='/tmp /var/spool'`<hr/>`updatedb --output=/path/to/output.db`<hr/>`updatedb --localpaths='/usr /var'` |
| `uptime` | Tells how long the system has been running | `uptime`<hr/>`uptime -p`<hr/>`uptime -s`<hr/>`uptime --help` |
| `useradd` | Creates a new user | `sudo useradd username`<hr/>`sudo useradd -m username`<hr/>`sudo useradd -s /bin/bash username`<hr/>`sudo useradd -G groupname username` |
| `usermod` | Modifies a user account | `sudo usermod -l newname oldname`<hr/>`sudo usermod -G groupname username`<hr/>`sudo usermod -s /bin/zsh username`<hr/>`sudo usermod -aG sudo username` |
| `userdel` | Deletes a user account | `sudo userdel username`<hr/>`sudo userdel -r username`<hr/>`sudo userdel -f username`<hr/>`sudo userdel -Z username` |
| `vi` | Text editor in a terminal | `vi file.txt`<hr/>`vi +10 file.txt`<hr/>`vi -R file.txt`<hr/>`vi -b file.txt` |
| `vmstat` | Reports virtual memory statistics | `vmstat`<hr/>`vmstat 1`<hr/>`vmstat -s`<hr/>`vmstat -d` |
| `w` | Shows who is logged on and what they are doing | `w`<hr/>`w -h`<hr/>`w username`<hr/>`w -s` |
| `wait` | Waits for a process to change state | `wait`<hr/>`wait PID`<hr/>`wait -n`<hr/>`wait --help` |
| `watch` | Executes a program periodically, showing output fullscreen | `watch -n 5 df -h`<hr/>`watch -d ls -l`<hr/>`watch -t date`<hr/>`watch --differences=cumulative ls -l` |
| `wc` | Prints newline, word, and byte counts for each file | `wc file.txt`<hr/>`wc -l file.txt`<hr/>`wc -w file.txt`<hr/>`wc -c file.txt` |
| `wget` | Non-interactive network downloader | `wget http://example.com`<hr/>`wget -O file.txt http://example.com`<hr/>`wget -q http://example.com`<hr/>`wget -r http://example.com` |
| `which` | Shows the full path of shell commands | `which ls`<hr/>`which -a ls`<hr/>`which python`<hr/>`which --skip-alias ls` |
| `who` | Shows who is logged on | `who`<hr/>`who -a`<hr/>`
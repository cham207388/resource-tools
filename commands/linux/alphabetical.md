# Table of Contents

1. [Linux Commands from A to E](#linux-commands-from-a-to-e)
2. [Linux Commands from F to J](#linux-commands-from-f-to-j)
3. [Linux Commands from K to O](#linux-commands-from-k-to-o)
4. [Linux Commands from P to S](#linux-commands-from-p-to-s)
5. [Linux Commands from T to Z](#linux-commands-from-t-to-z)

## Linux Commands from A to E

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `alias` | Creates an alias for a command | `alias ll='ls -la'`<br>`alias grep='grep --color=auto'`<br>`alias cls=clear`<br>`alias update='sudo apt-get update'` |
| `apt-get` | APT package handling utility | `sudo apt-get update`<br>`sudo apt-get upgrade`<br>`sudo apt-get install <package>`<br>`sudo apt-get remove <package>` |
| `awk` | Pattern scanning and processing language | `awk '{print $1}' file.txt`<br>`awk '/pattern/ {print $0}' file.txt`<br>`awk 'BEGIN {print "Header"} {print $1} END {print "Footer"}' file.txt`<br>`awk -F: '{print $1}' /etc/passwd` |
| `basename` | Strips directory and suffix from filenames | `basename /path/to/file`<br>`basename /path/to/file .txt`<br>`basename /usr/local/bin/command`<br>`basename /usr/local/bin/command.sh .sh` |
| `cat` | Concatenates and displays files | `cat file.txt`<br>`cat file1.txt file2.txt`<br>`cat file.txt | grep "pattern"`<br>`cat > newfile.txt` |
| `cd` | Changes the current directory | `cd /home/user`<br>`cd ..`<br>`cd -`<br>`cd /var/log` |
| `chgrp` | Changes group ownership | `chgrp group file.txt`<br>`chgrp -R group directory/`<br>`chgrp group1:group2 file.txt`<br>`chgrp --reference=ref_file file.txt` |
| `chmod` | Changes file permissions | `chmod 755 file.txt`<br>`chmod -R 755 directory/`<br>`chmod u+x script.sh`<br>`chmod g-w file.txt` |
| `chown` | Changes file owner and group | `chown user file.txt`<br>`chown user:group file.txt`<br>`chown -R user directory/`<br>`chown --reference=ref_file file.txt` |
| `cmp` | Compares two files byte by byte | `cmp file1 file2`<br>`cmp -l file1 file2`<br>`cmp --silent file1 file2`<br>`cmp -n 10 file1 file2` |
| `cp` | Copies files and directories | `cp file1 file2`<br>`cp -r dir1 dir2`<br>`cp -p file1 file2`<br>`cp --verbose file1 file2` |
| `crontab` | Schedules commands to run at specified times | `crontab -e`<br>`crontab -l`<br>`crontab -r`<br>`crontab -u user -e` |
| `curl` | Transfers data from or to a server | `curl http://example.com`<br>`curl -o file.txt http://example.com/file.txt`<br>`curl -I http://example.com`<br>`curl -u user:pass http://example.com` |
| `cut` | Removes sections from each line of files | `cut -d':' -f1 /etc/passwd`<br>`cut -c1-10 file.txt`<br>`cut -f1,3 file.txt`<br>`cut -d',' -f2- file.csv` |
| `df` | Reports file system disk space usage | `df -h`<br>`df -k`<br>`df --total`<br>`df -i` |
| `diff` | Compares files line by line | `diff file1 file2`<br>`diff -u file1 file2`<br>`diff -c file1 file2`<br>`diff -r dir1 dir2` |
| `du` | Estimates file space usage | `du -h`<br>`du -sh`<br>`du -a`<br>`du --max-depth=1` |
| `echo` | Displays a line of text | `echo "Hello World"`<br>`echo $HOME`<br>`echo "Value: $VAR"`<br>`echo -n "No newline"` |
| `env` | Displays the environment or runs a command in a modified environment | `env`<br>`env VAR=value command`<br>`env -u VAR`<br>`env -i /bin/sh` |
| `exit` | Exits the shell | `exit`<br>`exit 1`<br>`exit 0`<br>`exit $?` |
| `export` | Sets environment variables | `export VAR=value`<br>`export PATH=$PATH:/new/path`<br>`export VAR1=value1 VAR2=value2`<br>`export -p` |

## Linux Commands from F to J

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `find` | Searches for files in a directory hierarchy | `find / -name "file.txt"`<br>`find /home -user username`<br>`find /var -type f -name "*.log"`<br>`find / -mtime -1` |
| `finger` | User information lookup program | `finger`<br>`finger username`<br>`finger -l username`<br>`finger -s` |
| `free` | Displays the amount of free and used memory in the system | `free`<br>`free -h`<br>`free -m`<br>`free -g` |
| `grep` | Searches for patterns in files | `grep "pattern" file.txt`<br>`grep -r "pattern" /path`<br>`grep -i "pattern" file.txt`<br>`grep -n "pattern" file.txt` |
| `groupadd` | Adds a new group | `sudo groupadd groupname`<br>`sudo groupadd -g 1001 groupname`<br>`sudo groupadd -f groupname`<br>`sudo groupadd -r groupname` |
| `groupdel` | Deletes a group | `sudo groupdel groupname`<br>`sudo groupdel -f groupname`<br>`sudo groupdel -r groupname`<br>`sudo groupdel --force groupname` |
| `groupmod` | Modifies a group | `sudo groupmod -n newgroupname oldgroupname`<br>`sudo groupmod -g 1002 groupname`<br>`sudo groupmod -p password groupname`<br>`sudo groupmod -A user1,user2 groupname` |
| `gzip` | Compresses files | `gzip file.txt`<br>`gzip -d file.txt.gz`<br>`gzip -r /path/to/dir`<br>`gzip -l file.txt.gz` |
| `head` | Outputs the first part of files | `head file.txt`<br>`head -n 10 file.txt`<br>`head -c 100 file.txt`<br>`head -v file.txt` |
| `history` | Displays the command history | `history`<br>`history | grep "pattern"`<br>`history -c`<br>`history -d 100` |
| `hostname` | Shows or sets the system's hostname | `hostname`<br>`hostname new-hostname`<br>`hostname -i`<br>`hostname -d` |
| `htop` | Interactive process viewer | `htop`<br>`htop -u username`<br>`htop -p PID`<br>`htop -s PERCENT_CPU` |
| `ifconfig` | Configures network interfaces | `ifconfig`<br>`ifconfig eth0 up`<br>`ifconfig eth0 down`<br>`ifconfig eth0 192.168.1.100` |
| `iptables` | Administration tool for IPv4 packet filtering and NAT | `sudo iptables -L`<br>`sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT`<br>`sudo iptables -D INPUT -p tcp --dport 22 -j ACCEPT`<br>`sudo iptables -F` |
| `iwconfig` | Configures wireless network interfaces | `iwconfig`<br>`iwconfig wlan0 essid "network_name"`<br>`iwconfig wlan0 key s:password`<br>`iwconfig wlan0 mode Managed` |
| `jobs` | Lists active jobs | `jobs`<br>`jobs -l`<br>`jobs -p`<br>`jobs -n` |
| `join` | Joins lines of two files on a common field | `join file1.txt file2.txt`<br>`join -1 1 -2 2 file1.txt file2.txt`<br>`join -t: file1.txt file2.txt`<br>`join -v 1 file1.txt file2.txt` |
| `journalctl` | Queries and displays messages from the journal | `journalctl`<br>`journalctl -u service_name`<br>`journalctl --since "1 hour ago"`<br>`journalctl -f` |

## Linux Commands from K to O

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `kill` | Sends a signal to a process | `kill PID`<br>`kill -9 PID`<br>`kill -SIGTERM PID`<br>`kill -l` |
| `killall` | Kills processes by name | `killall processname`<br>`killall -9 processname`<br>`killall -u username`<br>`killall -v processname` |
| `less` | Views file contents one screen at a time | `less file.txt`<br>`less +F file.txt`<br>`less -N file.txt`<br>`less +/pattern file.txt` |
| `ln` | Creates hard and symbolic links | `ln file1 file2`<br>`ln -s file1 linkname`<br>`ln -f file1 linkname`<br>`ln -b file1 linkname` |
| `locate` | Finds files by name | `locate file.txt`<br>`locate -i file.txt`<br>`locate "*.txt"`<br>`locate -c file.txt` |
| `login` | Begins a new session on the system | `login`<br>`login user`<br>`login --help`<br>`login -p` |
| `logout` | Ends the current session | `logout`<br>`logout --help`<br>`logout -f`<br>`logout -l` |
| `lsof` | Lists open files | `lsof`<br>`lsof -i`<br>`lsof /path/to/file`<br>`lsof -u username` |
| `ls` | Lists directory contents | `ls`<br>`ls -la`<br>`ls -lh`<br>`ls -a` |
| `lsblk` | Lists information about block devices | `lsblk`<br>`lsblk -f`<br>`lsblk -o NAME,SIZE`<br>`lsblk -d` |
| `man` | Displays the manual pages | `man ls`<br>`man -k keyword`<br>`man -f command`<br>`man -P cat ls` |
| `md5sum` | Computes and checks MD5 message digest | `md5sum file.txt`<br>`md5sum -c file.md5`<br>`md5sum --quiet file.txt`<br>`md5sum -t file.txt` |
| `mkdir` | Creates directories | `mkdir newdir`<br>`mkdir -p newdir/subdir`<br>`mkdir -m 755 newdir`<br>`mkdir --verbose newdir` |
| `mount` | Mounts a filesystem | `mount /dev/sda1 /mnt`<br>`mount -t ext4 /dev/sda1 /mnt`<br>`mount -o ro /dev/sda1 /mnt`<br>`mount -a` |
| `mv` | Moves or renames files and directories | `mv file1 file2`<br>`mv file /new/location`<br>`mv -i file1 file2`<br>`mv -u file1 file2` |
| `nano` | Simple text editor in a terminal | `nano file.txt`<br>`nano +line,file.txt`<br>`nano -B file.txt`<br>`nano -m file.txt` |
| `netstat` | Network statistics | `netstat`<br>`netstat -tuln`<br>`netstat -a`<br>`netstat -r` |
| `nice` | Runs a command with modified scheduling priority | `nice command`<br>`nice -n 10 command`<br>`nice --adjustment=5 command`<br>`nice -n -5 command` |
| `nl` | Numbers lines of files | `nl file.txt`<br>`nl -b a file.txt`<br>`nl -s ':' file.txt`<br>`nl -n ln file.txt` |
| `nmap` | Network exploration tool and security scanner | `nmap 192.168.1.1`<br>`nmap -sP 192.168.1.0/24`<br>`nmap -A 192.168.1.1`<br>`nmap -p 22,80 192.168.1.1` |
| `nohup` | Runs a command immune to hangups | `nohup command &`<br>`nohup command > output.log &`<br>`nohup -p PID`<br>`nohup command --help` |
| `nslookup` | Queries Internet name servers interactively | `nslookup example.com`<br>`nslookup`<br>`nslookup -query=A example.com`<br>`nslookup -timeout=10 example.com` |
| `passwd` | Changes user password | `passwd`<br>`passwd username`<br>`passwd -d username`<br>`passwd --status username` |
| `ping` | Sends ICMP ECHO_REQUEST to network hosts | `ping example.com`<br>`ping -c 4 example.com`<br>`ping -i 0.5 example.com`<br>`ping -s 100 example.com` |
| `ps` | Reports a snapshot of current processes | `ps`<br>`ps aux`<br>`ps -ef`<br>`ps -u username` |
| `pwd` | Prints the current working directory | `pwd`<br>`pwd -L`<br>`pwd -P`<br>`pwd --help` |
| `reboot` | Reboots the system | `reboot`<br>`reboot -f`<br>`reboot -p`<br>`reboot --help` |
| `rm` | Removes files or directories | `rm file.txt`<br>`rm -r directory`<br>`rm -f file.txt`<br>`rm -i file.txt` |
| `rmdir` | Removes empty directories | `rmdir directory`<br>`rmdir --ignore-fail-on-non-empty directory`<br>`rmdir -p directory/subdirectory`<br>`rmdir -v directory` |
| `scp` | Secure copy (remote file copy program) | `scp file.txt user@remote:/path`<br>`scp -r directory user@remote:/path`<br>`scp user@remote:/path/file.txt .`<br>`scp -P 2222 file.txt user@remote:/path` |
| `sed` | Stream editor for filtering and transforming text | `sed 's/old/new/g' file.txt`<br>`sed -n 'p' file.txt`<br>`sed '1d' file.txt`<br>`sed -e 's/old/new/' -e 's/foo/bar/' file.txt` |
| `shutdown` | Brings the system down | `shutdown now`<br>`shutdown -h +10`<br>`shutdown -r now`<br>`shutdown -c` |
| `sleep` | Delays for a specified amount of time | `sleep 5`<br>`sleep 1m`<br>`sleep 1h`<br>`sleep --help` |
| `sort` | Sorts lines of text files | `sort file.txt`<br>`sort -r file.txt`<br>`sort -n file.txt`<br>`sort -k 2 file.txt` |
| `ssh` | OpenSSH remote login client | `ssh user@remote`<br>`ssh -p 2222 user@remote`<br>`ssh -i keyfile user@remote`<br>`ssh -L localport:remote:remoteport user@remote` |
| `stat` | Displays file or file system status | `stat file.txt`<br>`stat -f file.txt`<br>`stat --format=%A file.txt`<br>`stat --printf="%s" file.txt` |
| `tail` | Outputs the last part of files | `tail file.txt`<br>`tail -n 10 file.txt`<br>`tail -f file.txt`<br>`tail -c 100 file.txt` |
| `tar` | Archives files | `tar -cvf archive.tar file1 file2`<br>`tar -xvf archive.tar`<br>`tar -tvf archive.tar`<br>`tar -czvf archive.tar.gz file1 file2` |
| `top` | Displays Linux tasks | `top`<br>`top -u username`<br>`top -p PID`<br>`top -n 1` |
| `touch` | Changes file timestamps or creates empty files | `touch file.txt`<br>`touch -c file.txt`<br>`touch -d "2023-01-01" file.txt`<br>`touch -t 202301011200 file.txt` |
| `tr` | Translates or deletes characters | `tr 'a-z' 'A-Z'`<br>`tr -d '[:digit:]'`<br>`tr -s ' '`<br>`tr '[:lower:]' '[:upper:]'` |
| `uname` | Prints system information | `uname`<br>`uname -a`<br>`uname

## Linux Commands from K to N

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `kill` | Sends a signal to a process | `kill PID`<br>`kill -9 PID`<br>`kill -SIGTERM PID`<br>`kill -l` |
| `killall` | Kills processes by name | `killall processname`<br>`killall -9 processname`<br>`killall -u username`<br>`killall -v processname` |
| `less` | Views file contents one screen at a time | `less file.txt`<br>`less +F file.txt`<br>`less -N file.txt`<br>`less +/pattern file.txt` |
| `ln` | Creates hard and symbolic links | `ln file1 file2`<br>`ln -s file1 linkname`<br>`ln -f file1 linkname`<br>`ln -b file1 linkname` |
| `locate` | Finds files by name | `locate file.txt`<br>`locate -i file.txt`<br>`locate "*.txt"`<br>`locate -c file.txt` |
| `login` | Begins a new session on the system | `login`<br>`login user`<br>`login --help`<br>`login -p` |
| `logout` | Ends the current session | `logout`<br>`logout --help`<br>`logout -f`<br>`logout -l` |
| `lsof` | Lists open files | `lsof`<br>`lsof -i`<br>`lsof /path/to/file`<br>`lsof -u username` |
| `ls` | Lists directory contents | `ls`<br>`ls -la`<br>`ls -lh`<br>`ls -a` |
| `lsblk` | Lists information about block devices | `lsblk`<br>`lsblk -f`<br>`lsblk -o NAME,SIZE`<br>`lsblk -d` |
| `man` | Displays the manual pages | `man ls`<br>`man -k keyword`<br>`man -f command`<br>`man -P cat ls` |
| `md5sum` | Computes and checks MD5 message digest | `md5sum file.txt`<br>`md5sum -c file.md5`<br>`md5sum --quiet file.txt`<br>`md5sum -t file.txt` |
| `mkdir` | Creates directories | `mkdir newdir`<br>`mkdir -p newdir/subdir`<br>`mkdir -m 755 newdir`<br>`mkdir --verbose newdir` |
| `mount` | Mounts a filesystem | `mount /dev/sda1 /mnt`<br>`mount -t ext4 /dev/sda1 /mnt`<br>`mount -o ro /dev/sda1 /mnt`<br>`mount -a` |
| `mv` | Moves or renames files and directories | `mv file1 file2`<br>`mv file /new/location`<br>`mv -i file1 file2`<br>`mv -u file1 file2` |
| `nano` | Simple text editor in a terminal | `nano file.txt`<br>`nano +line,file.txt`<br>`nano -B file.txt`<br>`nano -m file.txt` |
| `netstat` | Network statistics | `netstat`<br>`netstat -tuln`<br>`netstat -a`<br>`netstat -r` |
| `nice` | Runs a command with modified scheduling priority | `nice command`<br>`nice -n 10 command`<br>`nice --adjustment=5 command`<br>`nice -n -5 command` |
| `nl` | Numbers lines of files | `nl file.txt`<br>`nl -b a file.txt`<br>`nl -s ':' file.txt`<br>`nl -n ln file.txt` |
| `nmap` | Network exploration tool and security scanner | `nmap 192.168.1.1`<br>`nmap -sP 192.168.1.0/24`<br>`nmap -A 192.168.1.1`<br>`nmap -p 22,80 192.168.1.1` |
| `nohup` | Runs a command immune to hangups | `nohup command &`<br>`nohup command > output.log &`<br>`nohup -p PID`<br>`nohup command --help` |
| `nslookup` | Queries Internet name servers interactively | `nslookup example.com`<br>`nslookup`<br>`nslookup -query=A example.com`<br>`nslookup -timeout=10 example.com` |

## Linux Commands from P to S

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `passwd` | Changes user password | `passwd`<br>`passwd username`<br>`passwd -d username`<br>`passwd --status username` |
| `ping` | Sends ICMP ECHO_REQUEST to network hosts | `ping example.com`<br>`ping -c 4 example.com`<br>`ping -i 0.5 example.com`<br>`ping -s 100 example.com` |
| `ps` | Reports a snapshot of current processes | `ps`<br>`ps aux`<br>`ps -ef`<br>`ps -u username` |
| `pwd` | Prints the current working directory | `pwd`<br>`pwd -L`<br>`pwd -P`<br>`pwd --help` |
| `reboot` | Reboots the system | `reboot`<br>`reboot -f`<br>`reboot -p`<br>`reboot --help` |
| `rm` | Removes files or directories | `rm file.txt`<br>`rm -r directory`<br>`rm -f file.txt`<br>`rm -i file.txt` |
| `rmdir` | Removes empty directories | `rmdir directory`<br>`rmdir --ignore-fail-on-non-empty directory`<br>`rmdir -p directory/subdirectory`<br>`rmdir -v directory` |
| `scp` | Secure copy (remote file copy program) | `scp file.txt user@remote:/path`<br>`scp -r directory user@remote:/path`<br>`scp user@remote:/path/file.txt .`<br>`scp -P 2222 file.txt user@remote:/path` |
| `sed` | Stream editor for filtering and transforming text | `sed 's/old/new/g' file.txt`<br>`sed -n 'p' file.txt`<br>`sed '1d' file.txt`<br>`sed -e 's/old/new/' -e 's/foo/bar/' file.txt` |
| `shutdown` | Brings the system down | `shutdown now`<br>`shutdown -h +10`<br>`shutdown -r now`<br>`shutdown -c` |
| `sleep` | Delays for a specified amount of time | `sleep 5`<br>`sleep 1m`<br>`sleep 1h`<br>`sleep --help` |
| `sort` | Sorts lines of text files | `sort file.txt`<br>`sort -r file.txt`<br>`sort -n file.txt`<br>`sort -k 2 file.txt` |
| `ssh` | OpenSSH remote login client | `ssh user@remote`<br>`ssh -p 2222 user@remote`<br>`ssh -i keyfile user@remote`<br>`ssh -L localport:remote:remoteport user@remote` |
| `stat` | Displays file or file system status | `stat file.txt`<br>`stat -f file.txt`<br>`stat --format=%A file.txt`<br>`stat --printf="%s" file.txt` |

## Linux Commands from T to Z

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `tail` | Outputs the last part of files | `tail file.txt`<br>`tail -n 10 file.txt`<br>`tail -f file.txt`<br>`tail -c 100 file.txt` |
| `tar` | Archives files | `tar -cvf archive.tar file1 file2`<br>`tar -xvf archive.tar`<br>`tar -tvf archive.tar`<br>`tar -czvf archive.tar.gz file1 file2` |
| `top` | Displays Linux tasks | `top`<br>`top -u username`<br>`top -p PID`<br>`top -n 1` |
| `touch` | Changes file timestamps or creates empty files | `touch file.txt`<br>`touch -c file.txt`<br>`touch -d "2023-01-01" file.txt`<br>`touch -t 202301011200 file.txt` |
| `tr` | Translates or deletes characters | `tr 'a-z' 'A-Z'`<br>`tr -d '[:digit:]'`<br>`tr -s ' '`<br>`tr '[:lower:]' '[:upper:]'` |
| `uname` | Prints system information | `uname`<br>`uname -a`<br>`uname -r`<br>`uname -s` |
| `uniq` | Removes duplicate lines from sorted files | `uniq file.txt`<br>`uniq -c file.txt`<br>`uniq -d file.txt`<br>`uniq -u file.txt` |
| `updatedb` | Updates the database used by `locate` | `sudo updatedb`<br>`updatedb --prunepaths='/tmp /var/spool'`<br>`updatedb --output=/path/to/output.db`<br>`updatedb --localpaths='/usr /var'` |
| `uptime` | Tells how long the system has been running | `uptime`<br>`uptime -p`<br>`uptime -s`<br>`uptime --help` |
| `useradd` | Creates a new user | `sudo useradd username`<br>`sudo useradd -m username`<br>`sudo useradd -s /bin/bash username`<br>`sudo useradd -G groupname username` |
| `usermod` | Modifies a user account | `sudo usermod -l newname oldname`<br>`sudo usermod -G groupname username`<br>`sudo usermod -s /bin/zsh username`<br>`sudo usermod -aG sudo username` |
| `userdel` | Deletes a user account | `sudo userdel username`<br>`sudo userdel -r username`<br>`sudo userdel -f username`<br>`sudo userdel -Z username` |
| `vi` | Text editor in a terminal | `vi file.txt`<br>`vi +10 file.txt`<br>`vi -R file.txt`<br>`vi -b file.txt` |
| `vmstat` | Reports virtual memory statistics | `vmstat`<br>`vmstat 1`<br>`vmstat -s`<br>`vmstat -d` |
| `w` | Shows who is logged on and what they are doing | `w`<br>`w -h`<br>`w username`<br>`w -s` |
| `wait` | Waits for a process to change state | `wait`<br>`wait PID`<br>`wait -n`<br>`wait --help` |
| `watch` | Executes a program periodically, showing output fullscreen | `watch -n 5 df -h`<br>`watch -d ls -l`<br>`watch -t date`<br>`watch --differences=cumulative ls -l` |
| `wc` | Prints newline, word, and byte counts for each file | `wc file.txt`<br>`wc -l file.txt`<br>`wc -w file.txt`<br>`wc -c file.txt` |
| `wget` | Non-interactive network downloader | `wget http://example.com`<br>`wget -O file.txt http://example.com`<br>`wget -q http://example.com`<br>`wget -r http://example.com` |
| `which` | Shows the full path of shell commands | `which ls`<br>`which -a ls`<br>`which python`<br>`which --skip-alias ls` |
| `who` | Shows who is logged on | `who`<br>`who -a`<br>`who -b`<br>`who -m` |
| `whoami` | Prints the current user ID and name | `whoami`<br>`whoami --help`<br>`whoami --version`<br>`whoami -h` |
| `xargs` | Builds and executes command lines from standard input | `xargs < command`<br>`find . -name "*.txt" | xargs grep "pattern"`<br>`echo "file1 file2" | xargs rm`<br>`xargs -n 1 -P 4 < command` |
| `yes` | Outputs a string repeatedly until killed | `yes`<br>`yes "text"`<br>`yes > file.txt`<br>`yes --help` |
| `zip` | Packages and compresses (archives) files | `zip archive.zip file1 file2`<br>`zip -r archive.zip directory`<br>`zip -d archive.zip file1`<br>`zip -e archive.zip file1` |
| `zcat` | Compresses or decompresses files | `zcat file.gz`<br>`zcat -f file.gz`<br>`zcat --help`<br>`zcat file.gz > file.txt` |
| `zgrep` | Grep compressed files | `zgrep "pattern" file.gz`<br>`zgrep -i "pattern" file.gz`<br>`zgrep -v "pattern" file.gz`<br>`zgrep -c "pattern" file.gz` |
| `zipinfo` | Lists detailed information about a zip archive | `zipinfo archive.zip`<br>`zipinfo -1 archive.zip`<br>`zipinfo -t archive.zip`<br>`zipinfo -m archive.zip` |
| `zmore` | Views compressed files | `zmore file.gz`<br>`zmore --help`<br>`zmore file.gz | less`<br>`zmore file1.gz file2.gz` |
| `znew` | Recompresses .Z files to .gz files | `znew file.Z`<br>`znew -t file.Z`<br>`znew -f file.Z`<br>`znew -K file.Z` |

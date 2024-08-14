# Account Management Commands

## useradd

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `useradd` | `sudo useradd john` | Adds a new user named `john`. | `grep john /etc/passwd` |
|           | `sudo useradd -m alice` | Adds a new user named `alice` and creates a home directory for her. | `ls /home` |
|           | `sudo useradd -d /custom/home/dir bob` | Adds a user named `bob` with a custom home directory. | `grep bob /etc/passwd` |
|           | `sudo useradd -s /bin/bash charlie` | Adds a user named `charlie` with `/bin/bash` as the default shell. | `grep charlie /etc/passwd` |
|           | `sudo useradd -G sudo,docker daniel` | Adds a user named `daniel` to the `sudo` and `docker` groups. | `groups daniel` |

## userdel

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `userdel` | `sudo userdel john` | Deletes the user `john`. | `grep john /etc/passwd` |
|           | `sudo userdel -r alice` | Deletes the user `alice` and her home directory. | `ls /home` |
|           | `sudo userdel -f bob` | Forces the deletion of the user `bob`, even if logged in. | `grep bob /etc/passwd` |
|           | `sudo userdel --remove charlie` | Deletes the user `charlie` and removes the home directory (alternative syntax). | `grep charlie /etc/passwd` |
|           | `sudo userdel --force daniel` | Forces the deletion of the user `daniel`. | `grep daniel /etc/passwd` |

## usermod

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `usermod` | `sudo usermod -l johnny john` | Changes the username `john` to `johnny`. | `grep johnny /etc/passwd` |
|           | `sudo usermod -d /new/home johnny` | Changes the home directory of `johnny` to `/new/home`. | `grep johnny /etc/passwd` |
|           | `sudo usermod -s /bin/zsh johnny` | Changes the default shell of `johnny` to `/bin/zsh`. | `grep johnny /etc/passwd` |
|           | `sudo usermod -aG sudo,developers johnny` | Adds `johnny` to the `sudo` and `developers` groups. | `groups johnny` |
|           | `sudo usermod -L johnny` | Locks the user account `johnny`. | `sudo passwd -S johnny` |

## groupadd

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `groupadd` | `sudo groupadd developers` | Creates a new group named `developers`. | `grep developers /etc/group` |
|             | `sudo groupadd -g 1001 managers` | Creates a group named `managers` with GID 1001. | `grep managers /etc/group` |
|             | `sudo groupadd -r staff` | Creates a system group named `staff`. | `grep staff /etc/group` |
|             | `sudo groupadd -f team` | Creates a group named `team` if it doesn't exist. | `grep team /etc/group` |
|             | `sudo groupadd -K GID_MIN=2000 support` | Creates a group named `support` with minimum GID of 2000. | `grep support /etc/group` |

## groupdel

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `groupdel` | `sudo groupdel developers` | Deletes the group named `developers`. | `grep developers /etc/group` |
|             | `sudo groupdel managers` | Deletes the group named `managers`. | `grep managers /etc/group` |
|             | `sudo groupdel staff` | Deletes the system group named `staff`. | `grep staff /etc/group` |
|             | `sudo groupdel team` | Deletes the group named `team`. | `grep team /etc/group` |
|             | `sudo groupdel support` | Deletes the group named `support`. | `grep support /etc/group` |

## chage

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `chage` | `sudo chage -l john` | Lists password aging information for `john`. | `sudo chage -l john` |
|          | `sudo chage -m 7 john` | Sets minimum number of days between password changes to 7 for `john`. | `sudo chage -l john` |
|          | `sudo chage -M 90 john` | Sets maximum number of days before password must be changed to 90 for `john`. | `sudo chage -l john` |
|          | `sudo chage -E 2023-12-31 john` | Sets account expiry date to 31st December 2023 for `john`. | `sudo chage -l john` |
|          | `sudo chage -d 0 john` | Forces `john` to change password on next login. | `sudo chage -l john` |

## chmod

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `chmod` | `chmod 755 file.txt` | Sets read, write, and execute permissions for the owner, and read and execute permissions for others. | `ls -l file.txt` |
|          | `chmod -R 755 directory/` | Recursively sets permissions for the directory and its contents. | `ls -l directory/` |
|          | `chmod u+x script.sh` | Adds execute permission for the owner of the file. | `ls -l script.sh` |
|          | `chmod g-w file.txt` | Removes write permission for the group. | `ls -l file.txt` |
|          | `chmod o+r file.txt` | Adds read permission for others. | `ls -l file.txt` |

## chgrp

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `chgrp` | `chgrp developers file.txt` | Changes the group ownership of `file.txt` to `developers`. | `ls -l file.txt` |
|          | `chgrp -R staff directory/` | Recursively changes the group ownership of `directory` to `staff`. | `ls -l directory/` |
|          | `chgrp --reference=ref_file file.txt` | Sets the group ownership of `file.txt` to match `ref_file`. | `ls -l file.txt ref_file` |
|          | `sudo chgrp users /var/www` | Changes the group ownership of `/var/www` to `users`. | `ls -l /var/www` |
|          | `chgrp admin *` | Changes the group ownership of all files in the current directory to `admin`. | `ls -l` |

## who

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `who` | `who` | Displays information about all logged-in users. | `who` |
|         | `who -b` | Shows the last system boot time. | `who -b` |
|         | `who -q` | Shows all logged-in usernames and the number of users logged in. | `who -q` |
|         | `who -u` | Shows detailed information about each logged-in user. | `who -u` |
|         | `who am i` | Shows information about the current terminal session. | `who am i` |

## last

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `last` | `last` | Shows a list of last logged-in users. | `last` |
|         | `last -n 10` | Shows the last 10 logins. | `last -n 10` |
|         | `last -a` | Shows login information with the hostname in the last column. | `last -a` |
|         | `last -x` | Shows system shutdown, reboot, and run level changes. | `last -x` |
|         | `last reboot` | Shows reboot history. | `last reboot` |

## w

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `w` | `w` | Shows who is logged on and what they are doing. | `w` |
|         | `w -h` | Shows logged-on users without headers. | `w -h` |
|         | `w username` | Shows activity information for a specific user. | `w username` |
|         | `w -s` | Shows a short format output. | `w -s` |
|         | `w -f` | Shows or hides the from (remote hostname) field. | `w -f` |

## id

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `id` | `id` | Displays user ID and group ID of the current user. | `id` |
|         | `id john` | Displays user ID and group ID of user `john`. | `id john` |
|         | `id -u` | Displays only the user ID of the current user. | `id -u` |
|         | `id -g` | Displays only the group ID of the current user. | `id -g` |
|         | `id -G` | Displays all group IDs of the current user. | `id -G` |

## groups

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `groups` | `groups` | Shows the groups the current user is a member of. | `groups` |
|           | `groups john` | Shows the groups `john` is a member of. | `groups john` |
|           | `id -nG` | Displays the group names of the current user. | `id -nG` |
|           | `id -Gn john` | Displays the group names of user `john`. | `id -Gn john` |
|           | `getent group developers` | Shows all users in the `developers` group. | `getent group developers` |

## passwd

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `passwd` | `passwd` | Changes the password for the current user. | N/A |
|           | `sudo passwd john` | Changes the password for user `john` (requires sudo). | N/A |
|           | `sudo passwd -l john` | Locks the password of user `john`. | `sudo passwd -S john` |
|           | `sudo passwd -u john` | Unlocks the password of user `john`. | `sudo passwd -S john` |
|           | `sudo passwd -d john` | Deletes the password for user `john` (no password required). | `sudo passwd -S john` |

## su

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `su` | `su` | Switches to the root user. | `whoami` |
|       | `su - john` | Switches to user `john` with login shell. | `whoami` |
|       | `su -c 'command'` | Runs a single command as the root user. | `whoami` |
|       | `su -m john` | Switches to user `john` without changing the environment. | `whoami` |
|       | `su -s /bin/sh john` | Switches to user `john` with specified shell. | `whoami` |

## sudo

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `sudo` | `sudo command` | Runs a command as the root user. | `whoami` |
|         | `sudo -i` | Opens an interactive root shell. | `whoami` |
|         | `sudo -u john command` | Runs a command as user `john`. | `whoami` |
|         | `sudo -k` | Invalidates the user's sudo timestamp. | N/A |
|         | `sudo visudo` | Edits the sudoers file. | N/A |

## last

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `last` | `last` | Shows a list of last logged-in users. | `last` |
|         | `last -n 10` | Shows the last 10 logins. | `last -n 10` |
|         | `last -a` | Shows login information with the hostname in the last column. | `last -a` |
|         | `last -x` | Shows system shutdown, reboot, and run level changes. | `last -x` |
|         | `last reboot` | Shows reboot history. | `last reboot` |

## pinky

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `pinky` | `pinky` | Displays information about all logged-in users. | `pinky` |
|           | `pinky -l` | Displays detailed information for all users. | `pinky -l` |
|           | `pinky -b` | Displays a brief summary of logged-in users. | `pinky -b` |
|           | `pinky -s` | Displays only the name, line, and time for each user. | `pinky -s` |
|           | `pinky -f` | Displays full user name and other information. | `pinky -f` |

## users

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `users` | `users` | Displays a list of currently logged-in users. | `users` |
|           | `who | awk '{print $1}' | sort | uniq` | Shows the same output as `users` command using `who`, `awk`, `sort`, and `uniq` commands. | `users` |
|           | `w -h | awk '{print $1}' | sort | uniq` | Another way to list currently logged-in users using `w`, `awk`, `sort`, and `uniq`. | `users` |
|           | `who -q` | Displays all logged-in usernames and the number of users logged in. | `users` |
|           | `who | cut -d' ' -f1 | sort | uniq` | Uses `who`, `cut`, `sort`, and `uniq` to display logged-in users. | `users` |

## wall

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `wall` | `echo "System maintenance at 5 PM" | sudo wall` | Sends a message to all logged-in users. | Check all terminal sessions for the message. |
|           | `sudo wall -n "System reboot in 10 minutes"` | Sends a message without the header. | Check all terminal sessions for the message. |
|           | `echo "Upgrade complete" | sudo wall` | Sends another message to all logged-in users. | Check all terminal sessions for the message. |
|           | `echo "System will be down" | wall` | Sends a message (requires sudo if not a superuser). | Check all terminal sessions for the message. |
|           | `echo "Please log out" | wall` | Sends a log-out message to all users. | Check all terminal sessions for the message. |

## write

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `write` | `write john` | Starts a chat with user `john`. | Check `john`'s terminal for the message. |
|           | `write john pts/1` | Sends a message to `john` on terminal `pts/1`. | Check `john`'s terminal for the message. |
|           | `echo "Meeting at 3 PM" | write john` | Sends a predefined message to `john`. | Check `john`'s terminal for the message. |
|           | `write john < message.txt` | Sends the contents of `message.txt` to `john`. | Check `john`'s terminal for the message. |
|           | `write john <<< "Lunch time"` | Sends a one-liner message to `john`. | Check `john`'s terminal for the message. |

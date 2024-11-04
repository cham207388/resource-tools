# System Utility Commands

## Table of Contents

1. [date](#date)
2. [uptime](#uptime)
3. [hostname](#hostname)
4. [uname](#uname)
5. [which](#which)
6. [cal](#cal)
7. [dc](#dc)
8. [systemctl](#systemctl)
9. [ps](#ps)
10. [top](#top)
11. [kill](#kill)
12. [crontab](#crontab)
13. [at](#at)

## date

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `date` | `date` | Displays the current date and time. | `date` |
|         | `date "+%Y-%m-%d %H:%M:%S"` | Custom date format (YYYY-MM-DD HH:MM:SS). | `date "+%Y-%m-%d %H:%M:%S"` |
|         | `date -u` | Displays the current date and time in UTC. | `date -u` |
|         | `date --date="next Friday"` | Shows the date for the next Friday. | `date --date="next Friday"` |
|         | `date --set="2023-12-31 23:59:59"` | Sets the system date and time. (Requires sudo) | `date` |

## uptime

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `uptime` | `uptime` | Shows how long the system has been running. | `uptime` |
|           | `uptime -p` | Displays uptime in a human-readable format. | `uptime -p` |
|           | `uptime -s` | Shows the time when the system was last booted. | `uptime -s` |
|           | `uptime -V` | Displays the version of the uptime command. | `uptime -V` |
|           | `uptime --help` | Displays help information for the uptime command. | `uptime --help` |

## hostname

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `hostname` | `hostname` | Displays the current hostname. | `hostname` |
|              | `hostname newname` | Sets the system hostname to `newname`. (Requires sudo) | `hostname` |
|              | `hostname -I` | Shows the IP addresses of the host. | `hostname -I` |
|              | `hostnamectl` | Displays and modifies the hostname using systemd. | `hostnamectl` |
|              | `hostnamectl set-hostname newname` | Sets the system hostname to `newname` using systemd. (Requires sudo) | `hostnamectl` |

## uname

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `uname` | `uname` | Displays the system's kernel name. | `uname` |
|           | `uname -a` | Shows all system information. | `uname -a` |
|           | `uname -r` | Displays the kernel release version. | `uname -r` |
|           | `uname -n` | Shows the network node hostname. | `uname -n` |
|           | `uname -m` | Displays the machine hardware name. | `uname -m` |

## which

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `which` | `which ls` | Shows the path of the `ls` command. | `which ls` |
|            | `which python` | Shows the path of the `python` executable. | `which python` |
|            | `which -a ls` | Shows all instances of `ls` in the PATH. | `which -a ls` |
|            | `which --skip-alias ls` | Shows the path of the `ls` command, skipping aliases. | `which --skip-alias ls` |
|            | `which bash` | Shows the path of the `bash` shell. | `which bash` |

## cal

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `cal` | `cal` | Displays the current month's calendar. | `cal` |
|         | `cal 2023` | Shows the calendar for the year 2023. | `cal 2023` |
|         | `cal 12 2023` | Displays the calendar for December 2023. | `cal 12 2023` |
|         | `cal -3` | Shows the previous, current, and next month. | `cal -3` |
|         | `cal -m July` | Displays the calendar for July of the current year. | `cal -m July` |

## dc

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `dc` | `dc` | Starts the `dc` calculator. | `dc` |
|         | `echo '2 3 + p' | dc` | Adds 2 and 3, then prints the result. | `echo '2 3 + p' | dc` |
|         | `echo '10 2 / p' | dc` | Divides 10 by 2, then prints the result. | `echo '10 2 / p' | dc` |
|         | `echo '5 3 * p' | dc` | Multiplies 5 and 3, then prints the result. | `echo '5 3 * p' | dc` |
|         | `echo '10 3 % p' | dc` | Finds the remainder of 10 divided by 3, then prints the result. | `echo '10 3 % p' | dc` |

## systemctl

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `systemctl` | `systemctl status` | Shows the status of the system and services. | `systemctl status` |
|                | `sudo systemctl start apache2` | Starts the Apache2 service. | `systemctl status apache2` |
|                | `sudo systemctl stop apache2` | Stops the Apache2 service. | `systemctl status apache2` |
|                | `sudo systemctl restart apache2` | Restarts the Apache2 service. | `systemctl status apache2` |
|                | `sudo systemctl enable apache2` | Enables Apache2 to start on boot. | `systemctl is-enabled apache2` |

## ps

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `ps` | `ps` | Displays currently running processes. | `ps` |
|         | `ps aux` | Shows detailed information about all running processes. | `ps aux` |
|         | `ps -ef` | Displays all processes in full-format listing. | `ps -ef` |
|         | `ps -u john` | Shows processes owned by user `john`. | `ps -u john` |
|         | `ps -p 1234` | Displays information for the process with PID 1234. | `ps -p 1234` |

## top

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `top` | `top` | Displays real-time information about running processes. | `top` |
|         | `top -u john` | Shows processes owned by user `john` in real-time. | `top -u john` |
|         | `top -n 1` | Displays process information once and exits. | `top -n 1` |
|         | `top -p 1234` | Monitors the process with PID 1234. | `top -p 1234` |
|         | `top -b -n 1` | Outputs top information in batch mode. | `top -b -n 1` |

## kill

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `kill` | `kill 1234` | Sends the default TERM signal to the process with PID 1234. | `ps -p 1234` |
|           | `kill -9 1234` | Sends the KILL signal to forcibly terminate the process with PID 1234. | `ps -p 1234` |
|           | `kill -SIGTERM 1234` | Sends the TERM signal to the process with PID 1234. | `ps -p 1234` |
|           | `kill -l` | Lists all available signals. | `kill -l` |
|           | `kill -STOP 1234` | Stops (pauses) the process with PID 1234. | `ps -p 1234` |

## crontab

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `crontab` | `crontab -e` | Edits the current user's crontab file. | `crontab -l` |
|             | `crontab -l` | Lists the current user's crontab entries. | `crontab -l` |
|             | `echo "0 **** /path/to/script" | crontab -` | Schedules a script to run hourly. | `crontab -l` |
|             | `echo "0 0 ** 0 /path/to/script" | crontab -` | Schedules a script to run weekly. | `crontab -l` |
|             | `echo "0 0 1 ** /path/to/script" | crontab -` | Schedules a script to run monthly. | `crontab -l` |

## at

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `at` | `echo "backup.sh" | at 2am` | Schedules a script to run at 2 AM. | `atq` |
|         | `at 14:30` | Enters at command prompt to schedule a job at 2:30 PM. | `atq` |
|         | `echo "update.sh" | at now + 1 hour` | Schedules a script to run one hour from now. | `atq` |
|         | `at -l` | Lists all scheduled `at` jobs. | `at -l` |
|         | `atrm 1` | Removes the `at` job with ID 1. | `atq` |

These commands cover various system utilities that are commonly used in Linux environments. Each command includes usage examples, explanations, and verification steps to ensure the command has been executed correctly.

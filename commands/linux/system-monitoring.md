# System Monitoring Commands

## Table of Contents

1. [df](#df)
2. [du](#du)
3. [dmesg](#dmesg)
4. [iostat](#iostat)
5. [netstat](#netstat)
6. [free](#free)
7. [top](#top)
8. [nohup](#nohup)
9. [shutdown](#shutdown)
10. [init](#init)
11. [reboot](#reboot)
12. [halt](#halt)
13. [hostnamectl](#hostnamectl)
14. [uname](#uname)
15. [dmidecode](#dmidecode)
16. [arch](#arch)

## df

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `df` | `df` | Displays disk space usage for all mounted filesystems. | `df` |
|        | `df -h` | Shows disk space usage in human-readable format. | `df -h` |
|        | `df -T` | Displays the filesystem type. | `df -T` |
|        | `df -i` | Shows inode information instead of block usage. | `df -i` |
|        | `df /home` | Displays disk space usage for the /home directory. | `df /home` |

## du

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `du` | `du` | Summarizes disk usage of each file and directory. | `du` |
|        | `du -h` | Displays disk usage in human-readable format. | `du -h` |
|        | `du -sh` | Summarizes total disk usage of the current directory in human-readable format. | `du -sh` |
|        | `du -a` | Displays disk usage for all files and directories. | `du -a` |
|        | `du -d 1` | Shows disk usage of directories up to depth 1. | `du -d 1` |

## dmesg

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `dmesg` | `dmesg` | Displays the kernel ring buffer messages. | `dmesg` |
|           | `dmesg | less` | Paginates the kernel messages for easier reading. | `dmesg | less` |
|           | `dmesg -T` | Shows human-readable timestamps. | `dmesg -T` |
|           | `dmesg -c` | Clears the ring buffer after printing. | `dmesg -c` |
|           | `dmesg -l err` | Displays only error messages. | `dmesg -l err` |

## iostat

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `iostat` | `iostat 1` | Displays CPU and I/O statistics every second. | `iostat 1` |
|           | `iostat -c` | Shows only CPU statistics. | `iostat -c` |
|           | `iostat -d` | Displays only device I/O statistics. | `iostat -d` |
|           | `iostat -x` | Shows extended statistics. | `iostat -x` |
|           | `iostat -p sda` | Displays statistics for the specified device. | `iostat -p sda` |

## netstat

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `netstat` | `netstat` | Displays network connections, routing tables, interface statistics, masquerade connections, and multicast memberships. | `netstat` |
|           | `netstat -tuln` | Shows all listening TCP and UDP ports with numeric addresses. | `netstat -tuln` |
|           | `netstat -p` | Displays the PID and program name for each connection. | `netstat -p` |
|           | `netstat -r` | Displays the routing table. | `netstat -r` |
|           | `netstat -i` | Shows network interface statistics. | `netstat -i` |

## free

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `free` | `free` | Displays the amount of free and used memory in the system. | `free` |
|          | `free -h` | Shows memory usage in human-readable format. | `free -h` |
|          | `free -m` | Displays memory usage in megabytes. | `free -m` |
|          | `free -g` | Shows memory usage in gigabytes. | `free -g` |
|          | `free -s 5` | Displays memory usage every 5 seconds. | `free -s 5` |

## top

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `top` | `top` | Displays real-time information about running processes. | `top` |
|         | `top -u john` | Shows processes owned by user `john` in real-time. | `top -u john` |
|         | `top -n 1` | Displays process information once and exits. | `top -n 1` |
|         | `top -p 1234` | Monitors the process with PID 1234. | `top -p 1234` |
|         | `top -b -n 1` | Outputs top information in batch mode. | `top -b -n 1` |

## nohup

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `nohup` | `nohup command &` | Runs `command` immune to hangups and in the background. | `ps -ef | grep command` |
|           | `nohup command > output.log &` | Runs `command` and redirects output to `output.log`. | `cat output.log` |
|           | `nohup command >> output.log 2>&1 &` | Runs `command` and appends output and errors to `output.log`. | `cat output.log` |
|           | `nohup command < /dev/null &` | Runs `command` without reading from the terminal. | `ps -ef | grep command` |
|           | `nohup -p 1234` | Makes the process with PID 1234 immune to hangups. | `ps -p 1234` |

## shutdown

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `shutdown` | `sudo shutdown -h now` | Shuts down the system immediately. | N/A |
|              | `sudo shutdown -r now` | Reboots the system immediately. | N/A |
|              | `sudo shutdown -h +10` | Shuts down the system in 10 minutes. | N/A |
|              | `sudo shutdown -c` | Cancels a scheduled shutdown. | N/A |
|              | `sudo shutdown -h 22:00` | Schedules a shutdown at 10:00 PM. | N/A |

## init

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `init` | `sudo init 0` | Shuts down the system. | N/A |
|          | `sudo init 6` | Reboots the system. | N/A |
|          | `sudo init 1` | Puts the system into single-user mode. | N/A |
|          | `sudo init 3` | Changes the system to multi-user mode with networking. | `runlevel` |
|          | `sudo init 5` | Changes the system to multi-user mode with networking and GUI. | `runlevel` |

## reboot

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `reboot` | `sudo reboot` | Reboots the system immediately. | N/A |
|           | `sudo reboot now` | Reboots the system immediately. | N/A |
|           | `sudo reboot -f` | Forces an immediate reboot without contacting the init system. | N/A |
|           | `sudo reboot --halt` | Reboots the system and then halts it. | N/A |
|           | `sudo reboot --poweroff` | Reboots the system and then powers it off. | N/A |

## halt

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `halt` | `sudo halt` | Halts the system. | N/A |
|         | `sudo halt -f` | Forces an immediate halt without contacting the init system. | N/A |
|         | `sudo halt --poweroff` | Halts the system and then powers it off. | N/A |
|         | `sudo halt --reboot` | Halts the system and then reboots it. | N/A |
|         | `sudo halt -w` | Writes the wtmp shutdown record, but doesn't actually halt the system. | N/A |

## hostnamectl

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `hostnamectl` | `hostnamectl` | Displays the current hostname and related information. | `hostnamectl` |
|                  | `hostnamectl set-hostname newname` | Sets the system hostname to `newname`. (Requires sudo) | `hostnamectl` |
|                  | `hostnamectl status` | Displays the current status of the system's hostname. | `hostnamectl status` |
|                  | `hostnamectl set-icon-name newicon` | Sets a new icon name for the system. (Requires sudo) | `hostnamectl` |
|                  | `hostnamectl set-deployment staging` | Sets the deployment environment. (Requires sudo) | `hostnamectl` |

## uname

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `uname` | `uname` | Displays the system's kernel name. | `uname` |
|           | `uname -a` | Shows all system information. | `uname -a` |
|           | `uname -r` | Displays the kernel release version. | `uname -r` |
|           | `uname -n` | Shows the network node hostname. | `uname -n` |
|           | `uname -m` | Displays the machine hardware name. | `uname -m` |

## dmidecode

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `dmidecode` | `sudo dmidecode` | Displays hardware information from the system's DMI tables. | `sudo dmidecode` |
|                  | `sudo dmidecode -t memory` | Shows detailed information about system memory. | `sudo dmidecode -t memory` |
|                  | `sudo dmidecode -t bios` | Displays BIOS information. | `sudo dmidecode -t bios` |
|                  | `sudo dmidecode -s system-serial-number` | Shows the system's serial number. | `sudo dmidecode -s system-serial-number` |
|                  | `sudo dmidecode -t processor` | Displays information about the processor. | `sudo dmidecode -t processor` |

## arch

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `arch` | `arch` | Displays the machine architecture. | `arch` |
|          | `uname -m` | Alternative command to display the machine hardware name. | `uname -m` |
|          | `arch --help` | Displays help information for the arch command. | `arch --help` |
|          | `dpkg --print-architecture` | Shows the architecture of the installed Debian package. | `dpkg --print-architecture` |
|          | `arch | grep x86` | Checks if the architecture is x86. | `arch | grep x86` |

These commands cover various aspects of system monitoring and management on a Linux system. Each example includes an explanation and a verification step to ensure the command has been executed correctly.

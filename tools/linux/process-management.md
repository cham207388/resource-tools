# Process Management Commands

## Table of Contents

1. [bg](#bg)
2. [fg](#fg)
3. [nice](#nice)
4. [jobs](#jobs)
5. [nohup](#nohup)
6. [pkill](#pkill)
7. [killall](#killall)
8. [ps](#ps)

## bg

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `bg` | `bg` | Resumes the most recently suspended job in the background. | `jobs` |
|      | `bg %1` | Resumes job number 1 in the background. | `jobs` |
|      | `bg %sleep` | Resumes the `sleep` job in the background. | `jobs` |
|      | `bg %%` | Resumes the current job in the background. | `jobs` |
|      | `bg %?pattern` | Resumes the job with a command line matching `pattern`. | `jobs` |

## fg

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `fg` | `fg` | Brings the most recently suspended job to the foreground. | `jobs` |
|      | `fg %1` | Brings job number 1 to the foreground. | `jobs` |
|      | `fg %sleep` | Brings the `sleep` job to the foreground. | `jobs` |
|      | `fg %%` | Brings the current job to the foreground. | `jobs` |
|      | `fg %?pattern` | Brings the job with a command line matching `pattern` to the foreground. | `jobs` |

## nice

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `nice` | `nice -n 10 command` | Runs `command` with a niceness of 10. | `ps -o pid,ni,cmd -p $(pgrep command)` |
|        | `nice --adjustment=5 command` | Runs `command` with a niceness of 5. | `ps -o pid,ni,cmd -p $(pgrep command)` |
|        | `sudo nice -n -5 command` | Runs `command` with a niceness of -5 (requires sudo). | `ps -o pid,ni,cmd -p $(pgrep command)` |
|        | `nice -n 19 command` | Runs `command` with the lowest priority. | `ps -o pid,ni,cmd -p $(pgrep command)` |
|        | `nice -n 0 command` | Runs `command` with the default niceness. | `ps -o pid,ni,cmd -p $(pgrep command)` |

## jobs

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `jobs` | `jobs` | Lists all jobs running in the current shell. | `jobs` |
|        | `jobs -l` | Lists jobs with their process IDs. | `jobs -l` |
|        | `jobs -p` | Lists only the process IDs of the jobs. | `jobs -p` |
|        | `jobs -r` | Lists only running jobs. | `jobs -r` |
|        | `jobs -s` | Lists only stopped jobs. | `jobs -s` |

## nohup

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `nohup` | `nohup command &` | Runs `command` immune to hangups and in the background. | `ps -ef | grep command` |
|         | `nohup command > output.log &` | Runs `command` and redirects output to `output.log`. | `cat output.log` |
|         | `nohup command >> output.log 2>&1 &` | Runs `command` and appends output and errors to `output.log`. | `cat output.log` |
|         | `nohup command < /dev/null &` | Runs `command` without reading from the terminal. | `ps -ef | grep command` |
|         | `nohup -p 1234` | Makes the process with PID 1234 immune to hangups. | `ps -p 1234` |

## pkill

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `pkill` | `pkill command` | Sends the default signal (TERM) to processes running `command`. | `ps -ef | grep command` |
|         | `pkill -9 command` | Sends the KILL signal to processes running `command`. | `ps -ef | grep command` |
|         | `pkill -f pattern` | Sends the default signal to processes matching `pattern`. | `ps -ef | grep pattern` |
|         | `pkill -u username` | Sends the default signal to all processes owned by `username`. | `ps -u username` |
|         | `pkill -P 1234` | Sends the default signal to child processes of PID 1234. | `ps --ppid 1234` |

## killall

| Command | Examples | Explanation | Verification |
| ------- | -------- | ----------- | ------------ |
| `killall` | `killall command` | Sends the default signal (TERM) to all processes running `command`. | `ps -ef | grep command` |
|            | `killall -9 command` | Sends the KILL signal to all processes running `command`. | `ps -ef | grep command` |
|            | `killall -u username` | Sends the default signal to all processes owned by `username`. | `ps -u username` |
|            | `killall -I command` | Sends the default signal to processes with case-insensitive matching name. | `ps -ef | grep -i command` |
|            | `killall -w command` | Waits for all `command` processes to terminate. | `ps -ef |

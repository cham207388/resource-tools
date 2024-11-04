# Scheduling

## `at`

- install `at` with `sudo yum install at`
- check status with `systemctl status atd` or `service atd status`
- start service with `systemctl start atd` or `service atd start`
- restart service with `systemctl restart atd` or `service atd restart`
- only runs when the system is booted
- one of task

Examples:

- `at -f script.sh`
- `at 9:00am`
  then enter the command to run
  then `Ctrl + D` to save
- `at 9:00am Monday`
- `at now + 1 minute`
- `at -l` to list jobs
- `at -r job_id` to delete a job

## `cron`

cron expressions. Only runs when the system is booted

- `*` = any value
- `,` = adds values
- `-` = range of values
- `/` = increments of values
- format: `minute hour day_of_month month day_of_week`
- example: `0 4 * * 1` = every Monday at 4:00am

possible values:

- minute: 0-59
- hour: 0-23
- day_of_month: 1-31
- month: 1-12 or JAN, FEB, MAR, APR, MAY, JUN, JUL, AUG, SEP, OCT, NOV, DEC
- day_of_week: 0-7 (0 or 7 are Sunday): SUN, MON, TUE, WED, THU, FRI, SAT

values: `*` = any

- the file is at /tmp/crontab.hgt

- check status with `systemctl status crond` or `service crond status`
- start service with `systemctl start crond` or `service crond start`
- restart service with `systemctl restart crond` or `service crond restart`
- runs on a schedule
- one of task

- `crontab -e` = edit the cron table
- `crontab -l` = list the cron table
- `crontab -r` = remove the cron table

### system wide cron jobs

Changes to this file will not take effect until the cron service is restarted.
`sudo service crond restart`

- `/etc/crontab`: `vi /etc/crontab`
- `/etc/cron.d`: `vi /etc/cron.d`

### cron directories

put your script in the directory and it will run on the schedule: monthly, weekly, daily, or hourly

Folders. Files (scripts without a . ) in these directories will run on the schedule: monthly, weekly, daily, or hourly

- at `/etc/cron.d`
- at `/etc/cron.daily`
- at `/etc/cron.hourly`
- at `/etc/cron.monthly`
- at `/etc/cron.weekly`

inside `/etc/crontab`

- `* * * * * user-name command-to-be-executed`

You can create your own cron directory and add your own cron jobs to it.

- Say `mkdir cront.daily.2am` folder
- then `crontab -e`
- `00 02 * * * run-parts ~/cron.daily.2am --report`
- now we can add our scripts to the `~/cron.daily.2am` folder and they will run at 2:00am every day

## anacron

- anacron is a system service that ensures that tasks scheduled by cron are executed even if the system was not running when the scheduled time occurred.

- `/etc/anacrontab` requires root user: `sudo vi /etc/anacrontab`
- there's no user wide configuration file

## Resources

- [crontab.guru](https://crontab.guru/)

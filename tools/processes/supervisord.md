# Supervisord on Mac

| Command | Description |
|---------|-------------|
| install | `brew install supervisor` |
| run     | `supervisord -c supervisord.conf` |
| stop    | `supervisorctl shutdown` |
| restart | `supervisorctl restart <program_name>` |
| status  | `supervisorctl status` |
| logs    | `tail -f /tmp/supervisord.log` |

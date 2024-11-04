# ACL Commands

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `getfacl` | Displays ACLs of files and directories | `getfacl file.txt`<br>`getfacl -R directory/`<br>`getfacl --omit-header file.txt`<br>`getfacl -a file.txt` |
| `setfacl` | Sets ACLs of files and directories | `setfacl -m u:username:rwx file.txt`<br>`setfacl -x u:username file.txt`<br>`setfacl -R -m u:username:rwx directory/`<br>`setfacl -b file.txt` |
| `chacl` | Changes the ACLs of files and directories | `chacl u::rwx,g::r-x,o::r-- file.txt`<br>`chacl -d u::rwx file.txt`<br>`chacl -R u::rwx directory/`<br>`chacl -B file.txt` |
| `ls -l` | Displays file permissions and ownership (not directly ACL, but important for context) | `ls -l file.txt`<br>`ls -ld directory/`<br>`ls -l`<br>`ls -lh` |

## `getfacl` Command

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `getfacl file.txt` | Displays ACLs of a specific file | `getfacl file.txt` |
| `getfacl -R directory/` | Recursively displays ACLs of a directory and its contents | `getfacl -R directory/` |
| `getfacl --omit-header file.txt` | Displays ACLs without the header information | `getfacl --omit-header file.txt` |
| `getfacl -a file.txt` | Displays access ACLs only | `getfacl -a file.txt` |

## `setfacl` Command

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `setfacl -m u:username:rwx file.txt` | Modifies the ACL to grant user `username` read, write, and execute permissions on the file | `setfacl -m u:username:rwx file.txt` |
| `setfacl -x u:username file.txt` | Removes the ACL entry for the user `username` | `setfacl -x u:username file.txt` |
| `setfacl -R -m u:username:rwx directory/` | Recursively modifies the ACL for all files in a directory | `setfacl -R -m u:username:rwx directory/` |
| `setfacl -b file.txt` | Removes all ACL entries from the file | `setfacl -b file.txt` |

## `chacl` Command

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `chacl u::rwx,g::r-x,o::r-- file.txt` | Sets the ACL for the user, group, and others | `chacl u::rwx,g::r-x,o::r-- file.txt` |
| `chacl -d u::rwx file.txt` | Deletes the ACL entry for the user | `chacl -d u::rwx file.txt` |
| `chacl -R u::rwx directory/` | Recursively sets the ACL for all files in a directory | `chacl -R u::rwx directory/` |
| `chacl -B file.txt` | Removes all ACL entries from the file | `chacl -B file.txt` |

## `ls -l` Command

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `ls -l file.txt` | Displays file permissions and ownership | `ls -l file.txt` |
| `ls -ld directory/` | Displays directory permissions and ownership | `ls -ld directory/` |
| `ls -l` | Displays detailed list of files and directories in the current directory | `ls -l` |
| `ls -lh` | Displays detailed list of files and directories with human-readable sizes | `ls -lh` |

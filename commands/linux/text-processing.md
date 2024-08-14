# Text Processor Commands

| Command  | Explanation                                  | Usage                                                                                         |
| -------- | -------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `cut`    | Removes sections from each line of files     | `cut -d':' -f1 /etc/passwd`<br>`cut -c1-10 file.txt`<br>`cut -f1,3 file.txt`<br>`cut -d',' -f2- file.csv` |
| `awk`    | Pattern scanning and processing language     | `awk '{print $1}' file.txt`<br>`awk '/pattern/ {print $0}' file.txt`<br>`awk 'BEGIN {print "Header"} {print $1} END {print "Footer"}' file.txt`<br>`awk -F: '{print $1}' /etc/passwd` |
| `grep`   | Searches for patterns in files               | `grep "pattern" file.txt`<br>`grep -r "pattern" /path`<br>`grep -i "pattern" file.txt`<br>`grep -n "pattern" file.txt` |
| `egrep`  | Extended grep (supports extended regex)      | `egrep "pattern" file.txt`<br>`egrep -r "pattern" /path`<br>`egrep -i "pattern" file.txt`<br>`egrep -n "pattern" file.txt` |
| `sort`   | Sorts lines of text files                    | `sort file.txt`<br>`sort -r file.txt`<br>`sort -n file.txt`<br>`sort -k 2 file.txt` |
| `uniq`   | Removes duplicate lines from sorted files    | `uniq file.txt`<br>`uniq -c file.txt`<br>`uniq -d file.txt`<br>`uniq -u file.txt` |
| `wc`     | Prints newline, word, and byte counts for each file | `wc file.txt`<br>`wc -l file.txt`<br>`wc -w file.txt`<br>`wc -c file.txt` |
| `diff`   | Compares files line by line                  | `diff file1 file2`<br>`diff -u file1 file2`<br>`diff -c file1 file2`<br>`diff -r dir1 dir2` |
| `cmp`    | Compares two files byte by byte              | `cmp file1 file2`<br>`cmp -l file1 file2`<br>`cmp --silent file1 file2`<br>`cmp -n 10 file1 file2` |
| `tar`    | Archives files                               | `tar -cvf archive.tar file1 file2`<br>`tar -xvf archive.tar`<br>`tar -tvf archive.tar`<br>`tar -czvf archive.tar.gz file1 file2` |
| `gzip`   | Compresses files                             | `gzip file.txt`<br>`gzip -d file.txt.gz`<br>`gzip -r /path/to/dir`<br>`gzip -l file.txt.gz` |
| `gunzip` | Decompresses gzip files                      | `gunzip file.txt.gz`<br>`gunzip -c file.txt.gz > file.txt`<br>`gunzip -l file.txt.gz`<br>`gunzip -r /path/to/dir` |
| `truncate` | Shrinks or extends the size of a file to the specified size | `truncate -s 0 file.txt`<br>`truncate -s 10K file.txt`<br>`truncate -s -5M file.txt`<br>`truncate -r ref_file file.txt` |

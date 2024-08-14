# File

## File Maintenance Commands

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `cp` | Copies files and directories | `cp file1 file2`<br>`cp -r dir1 dir2`<br>`cp -p file1 file2`<br>`cp --verbose file1 file2` |
| `rm` | Removes files or directories | `rm file.txt`<br>`rm -r directory`<br>`rm -f file.txt`<br>`rm -i file.txt` |
| `mv` | Moves or renames files and directories | `mv file1 file2`<br>`mv file /new/location`<br>`mv -i file1 file2`<br>`mv -u file1 file2` |
| `mkdir` | Creates directories | `mkdir newdir`<br>`mkdir -p newdir/subdir`<br>`mkdir -m 755 newdir`<br>`mkdir --verbose newdir` |
| `rmdir` | Removes empty directories | `rmdir directory`<br>`rmdir --ignore-fail-on-non-empty directory`<br>`rmdir -p directory/subdirectory`<br>`rmdir -v directory` |

## File Display Commands

| Command | Explanation | Usage |
| ------- | ----------- | ----- |
| `cat` | Concatenates and displays files | `cat file.txt`<br>`cat file1.txt file2.txt`<br>`cat file.txt \| grep "pattern"`<br>`cat > newfile.txt` |
| `less` | Views file contents one screen at a time | `less file.txt`<br>`less +F file.txt`<br>`less -N file.txt`<br>`less +/pattern file.txt` |
| `more` | Views file contents one screen at a time | `more file.txt`<br>`more +10 file.txt`<br>`more -d file.txt`<br>`more -c file.txt` |
| `head` | Outputs the first part of files | `head file.txt`<br>`head -n 10 file.txt`<br>`head -c 100 file.txt`<br>`head -v file.txt` |
| `tail` | Outputs the last part of files | `tail file.txt`<br>`tail -n 10 file.txt`<br>`tail -f file.txt`<br>`tail -c 100 file.txt` |

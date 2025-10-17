[prathmesh@host02 ~]$ cat accessed.sh
#!/bin/bash
read -p "enter the path to check:" DIR
read -p "enter the no of days:" DAYS
find "$DIR" -type f -atime +"$DAYS"
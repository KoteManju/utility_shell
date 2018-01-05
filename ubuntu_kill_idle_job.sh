#!/bin/sh

#http://linux.vbird.org/linux_basic/0440processcontrol/0440processcontrol-fc4.php#process_1


# 1 
# dev 
#ps aux | grep 'syslog' | grep -v 'grep'| awk '{print $2}'
#kill -SIGHUP `ps aux|grep 'syslog'|grep -v 'grep'|awk '{print $2}'`



# 2 
# https://www.unix.com/shell-programming-and-scripting/219121-kill-idle-process-using-script.html
line=`ps -ef | grep suspect_process | grep -v grep`
pid=`echo $line | cut -f 2 -d " "`
minutes=`echo $line | cut -f 7 -d " " | cut -f 2 -d :`
if [ $minutes -gt 30 ]; then
  kill -9 $pid
  # Record what happened to log file
fi

# 3 
# https://serverfault.com/questions/166034/kill-all-processes-that-are-running-for-more-than-5-minutes-by-a-given-user-in-l
kill -9 $(ps -eo comm,pid,etimes | awk '/^procname/ {if ($3 > 300) { print $2}}')


# https://serverfault.com/questions/166034/kill-all-processes-that-are-running-for-more-than-5-minutes-by-a-given-user-in-l



# 4 
# This script will kill process which running more than X hours
# egrep: the selected process; grep: hours
PIDS="`ps eaxo bsdtime,pid,comm | egrep "spamd|exim|mysqld|httpd" | grep " 1:" | awk '{print $2}'`"

# Kill the process
echo "Killing processes running more than one hour..."
for i in ${PIDS}; do { echo "Killing $i"; kill -9 $i; }; done;









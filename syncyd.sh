#####################################################################################
# 
# Author: wishinlife
# QQ: 57956720
# E-Mail: wishinlife@qq.com
# Web Home: http://www.syncy.cn
#
#####################################################################################


pid_file="/var/run/syncy.pid"
start_cmd="/usr/bin/syncy.py &"

while true; do
	if [ -e /var/run/syncy.pid ]; then
		sypid=$(cat $pid_file)
		running=`ps|grep -w $sypid|grep -v grep|wc -l`
	else
		running=0
	fi
	if [ $running -le 0 ]; then
		eval $start_cmd
		echo "start syncy"
	else
		echo "syncy is running"
	fi
	sleep 10s
done

exit 0

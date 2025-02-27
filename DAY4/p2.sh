systemctl is-active firewalld.service >/dev/null 2>&1
if [ $? -eq 0 ];then
	echo "firewalld.service is active"
else
	echo "firewalld.service is not active"
	systemctl start firewalld.service >/dev/null 2>&1
	if [ $? -eq 0 ];then
		echo "firewalld.service started"
	else
		echo "firewalld.service is not started"
	fi
fi


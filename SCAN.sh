!/bin/bash
echo "Enter the starting Ip address :"
read FirstIp

echo "Enter the last Ip address :"

read LastIp

echo "Enter the port number you want to scan for :"

read port

nmap -sT $FirstIp- $LastIp -p $port -oG web
cat web | grep open >web1
cat web1 |cut -f2 -d":" | cut -f1 -d"(" > web2
cat web2


chmod +x SCAN.sh



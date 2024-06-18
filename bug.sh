a='\033[30;0m'
n='\033[0m'
h='\033[32;1m'
m='\033[31;1m'
c='\033[36;1m'
p='\033[1;35m'
k='\033[33;1m'

rm index.html
clear
echo $h
figlet WHITE
figlet + HAT +
echo $k
echo "   PLANKSTON$m"
echo ""
read -p "HOST> HTTP/HTTPS : " domain
echo $h
echo ""
nmap -p80 --script dns-brute.nse $domain

echo ""
echo "$k SCAN 200 OK, HOST OR IP"
echo $m

read -p "scan : " tek
echo $h

wget -S $tek

rm index.html
echo "$k home OR respon"
echo $m
read -p "h/r : " p

case $p in
h)
sh bug.sh
exit
;;

r)
sh .l
exit
;;
*)
echo "$m sepertinya anda belum cebok"
exit
esac
exit
done


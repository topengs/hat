a='\033[30;0m'
n='\033[0m'
h='\033[32;1m'
m='\033[31;1m'
c='\033[36;1m'
p='\033[1;35m'
k='\033[33;1m'

echo "$k SCAN 200 OK, HOST OR IP"
echo $m
read -p "scan : " tek

echo $h
wget -S $tek
rm index.html
echo $m
read -p "h/r : " bak
echo $h
case $bak in
h)
sh bug.sh
;;
r)
sh .l
;;
*)
echo "$m maaf? sepertinya tangan anda bau tai"
exit
esac
exit
done

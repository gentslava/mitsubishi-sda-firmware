#!/system/bin/sh

#Configure kernel parameters

echo 16777216 > /proc/sys/net/core/wmem_max
echo 16777216 > /proc/sys/net/core/rmem_max
echo 4096000 > /proc/sys/net/core/wmem_default
echo 4096000 > /proc/sys/net/core/rmem_default
echo 47541 63390 256082 > /proc/sys/net/ipv4/udp_mem

echo "Android" > /proc/sys/aoap/manufacturer
echo "Android Auto" > /proc/sys/aoap/model
echo "" > /proc/sys/aoap/description
echo "1.0" > /proc/sys/aoap/version
echo "" > /proc/sys/aoap/uri
echo "" > /proc/sys/aoap/serialnumber

#echo "Android" > /proc/sys/aoap/manufacturer
#echo "Android Open Automotive Protocol" > /proc/sys/aoap/model
#echo "Android Open Automotive Protocol" > /proc/sys/aoap/description
#echo "1.0" > /proc/sys/aoap/version
#echo "http://www.android.com/"  > /proc/sys/aoap/uri
#echo "0000000012345678" > /proc/sys/aoap/serialnumber

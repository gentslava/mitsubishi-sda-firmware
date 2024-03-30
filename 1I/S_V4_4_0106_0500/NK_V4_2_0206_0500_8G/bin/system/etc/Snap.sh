#!/system/bin/sh

qb_suspend()
{
	echo suspend....
}

qb_resume()
{
	echo resume....
	echo on > /sys/power/state
	
	insmod /system/lib/modules/tcc_dxb_drv.ko
	insmod /system/lib/modules/vpu_core.ko
	insmod /system/lib/modules/vpu_device.ko

	chmod 0666 /dev/dvb0.demux0
	chmod 0666 /dev/dvb0.dvr0
	chmod 0666 /dev/dvb0.frontend0
	chmod 0666 /dev/dvb0.net0
	chmod 0666 /dev/dvb0.demux1
	chmod 0666 /dev/dvb0.dvr1
	chmod 0666 /dev/dvb0.net1

	insmod /lib/modules/tcc_nand_core.ko
	insmod /lib/modules/tcc_nand.ko
	chmod 777 /dev/block/ndda

	echo 90 > /sys/class/gpio/export
	chmod 777 /sys/class/gpio/gpio90
	chmod 777 /sys/class/gpio/gpio90/*
}

echo Snap.sh Start

if [ ! -d /proc/falcon ]; then
	echo insmod /lib/modules/falcon.ko
	insmod /lib/modules/falcon.ko
	#DEVNO=`grep falcon\$ /proc/devices | cut -f 1 -d ' '`
	#mknod /dev/falcon c $DEVNO 0
fi

qb_suspend

(cat /proc/falcon/wait; qb_resume) &

sync
sleep 10

echo 3 > /proc/sys/vm/drop_caches
echo > /proc/falcon/snap

wait


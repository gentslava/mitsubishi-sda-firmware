#!/system/bin/sh

chmod 777 /data
chmod 777 /data/data

chmod 777 /dev/mscdev
chmod 777 /dev/jk_dummykey
chmod 777 /dev/screencapture
chmod 777 /dev/ttyTCC0
chmod 777 /dev/ttyTCC2
chmod 777 /dev/ttyTCC4
chmod 666 /dev/block/mmcblk0p3
chmod 666 /dev/block/mmcblk0p5
chmod 666 /dev/block/mmcblk0p6
chmod 666 /mnt/sdcard

#insmod /system/lib/modules/tcc_dxb_drv.ko
#insmod /system/lib/modules/vpu_core.ko
#insmod /system/lib/modules/vpu_device.ko

chmod 0666 /dev/dvb0.demux0
chmod 0666 /dev/dvb0.dvr0
chmod 0666 /dev/dvb0.frontend0
chmod 0666 /dev/dvb0.net0
chmod 0666 /dev/dvb0.demux1
chmod 0666 /dev/dvb0.dvr1
chmod 0666 /dev/dvb0.net1

chmod 777 /sys/devices/platform/dwc_otg.0/role_switch

# BT_RST
echo 109 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio109
chmod 777 /sys/class/gpio/gpio109/*

# QuickBoot GPIO
echo 128 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio128
chmod 777 /sys/class/gpio/gpio128/*

# /PAN_RST
echo 129 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio129
chmod 777 /sys/class/gpio/gpio129/*

#CP_PWR
echo 104 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio104
chmod 777 /sys/class/gpio/gpio104/*

#CP_RST
echo 110 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio110
chmod 777 /sys/class/gpio/gpio110/*

#VIDEO_SEL1
echo 205 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio205
chmod 777 /sys/class/gpio/gpio205/*

#VIDEO_DET
echo 99 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio99
chmod 777 /sys/class/gpio/gpio99/*

#DSRC_ON
echo 68 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio68
chmod 777 /sys/class/gpio/gpio68/*

#AUD_SEL4(gpio57)
echo 57 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio57
chmod 777 /sys/class/gpio/gpio57/*

#AUD_SEL5(gpio58)
echo 58 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio58
chmod 777 /sys/class/gpio/gpio58/*

#AUD_SEL6(gpio59)
echo 59 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio59
chmod 777 /sys/class/gpio/gpio59/*

#MIC_DET(gpio100)
echo 100 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio100
chmod 777 /sys/class/gpio/gpio100/*

#MIC_MUTE(gpio208)
echo 208 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio208
chmod 777 /sys/class/gpio/gpio208/*

chmod 666 /dev/snd/controlC*
chmod 666 /dev/snd/pcmC*

chmod 777 /system/etc
chmod 777 /system/etc/*
chmod 666 /dev/mem

#insmod /lib/modules/tcc_nand_core.ko
#insmod /lib/modules/tcc_nand.ko
#chmod 777 /dev/block/ndda

#FAN_OFF(gpio106)
echo 106 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio106
chmod 777 /sys/class/gpio/gpio106/*
echo out > /sys/class/gpio/gpio106/direction
echo 0 > /sys/class/gpio/gpio106/value

#USB_A_ON
echo 190 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio190
chmod 777 /sys/class/gpio/gpio190/*

#USB_B_ON
echo 209 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio209
chmod 777 /sys/class/gpio/gpio209/*

#DV_WP
echo 136 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio136
chmod 777 /sys/class/gpio/gpio136/*

#Create a link for CarPlay
ln -s /temp /tmp

#Configure network stack parameters
/system/etc/sysctl.sh

#Enable NCM
ifconfig ncm0 up

#CAM_DET
echo 75 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio75
chmod 777 /sys/class/gpio/gpio75/*

#DV_STM
echo 186 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio186
chmod 777 /sys/class/gpio/gpio186/*



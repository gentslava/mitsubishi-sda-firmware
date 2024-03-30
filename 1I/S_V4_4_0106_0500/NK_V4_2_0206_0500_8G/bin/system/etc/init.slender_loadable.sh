#!/system/bin/sh

#地デジを最初に行わないと通常起動で起動できない
# KG_ID DEL start
#insmod /system/lib/modules/tcc_dxb_drv.ko
# KG_ID DEL end

#SYSMANが起動時にSLCNANDにアクセスできないタイミングがあるので早めに
insmod /lib/modules/tcc_nand_core.ko
insmod /lib/modules/tcc_nand.ko

insmod /system/lib/modules/vpu_core.ko
insmod /system/lib/modules/vpu_device.ko


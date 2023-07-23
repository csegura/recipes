# check for home Downloads/fw directory
if [ ! -d ~/Downloads/fw ]; then
    mkdir ~/Downloads/fw
fi

cd ~/Downloads/fw

# download firmware rtl_nic
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/rtl_nic/rtl8156b-2.fw
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/rtl_nic/rtl8156a-2.fw
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/rtl_nic/rtl8153c-1.fw
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/rtl_nic/rtl8153b-2.fw
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/rtl_nic/rtl8153a-4.fw
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/rtl_nic/rtl8153a-3.fw
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/rtl_nic/rtl8153a-2.fw

if [ ! -d /lib/firmware/rtl_nic ]; then
    sudo mkdir /lib/firmware/rtl_nic
fi

sudo cp *.fw /lib/firmware/rtl_nic/

# download firmware i915
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/i915/dg1_huc.bin 
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/i915/tgl_huc.bin 
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/i915/tgl_huc.bin 
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/i915/dg1_guc_70.bin 
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/i915/tgl_guc_70.bin 
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/i915/adlp_guc_70.bin 
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/i915/dg2_guc_70.bin 
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/i915/dg2_dmc_ver2_07.bin 

if [ ! -d /lib/firmware/i915 ]; then
    sudo mkdir /lib/firmware/i915
fi

sudo cp *.bin /lib/firmware/i915/

rm *.fw
rm *.bin

# update initramfs
sudo update-initramfs -u

cd ~

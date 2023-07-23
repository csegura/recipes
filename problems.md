# Hardware

update-initramfs: Generating /boot/initrd.img-6.1.0-10-amd64
W: Possible missing firmware /lib/firmware/rtl_nic/rtl8156b-2.fw for module r8152
W: Possible missing firmware /lib/firmware/rtl_nic/rtl8156a-2.fw for module r8152
W: Possible missing firmware /lib/firmware/rtl_nic/rtl8153c-1.fw for module r8152
W: Possible missing firmware /lib/firmware/rtl_nic/rtl8153b-2.fw for module r8152
W: Possible missing firmware /lib/firmware/rtl_nic/rtl8153a-4.fw for module r8152
W: Possible missing firmware /lib/firmware/rtl_nic/rtl8153a-3.fw for module r8152
W: Possible missing firmware /lib/firmware/rtl_nic/rtl8153a-2.fw for module r8152
W: Possible missing firmware /lib/firmware/i915/dg1_huc.bin for module i915
W: Possible missing firmware /lib/firmware/i915/tgl_huc.bin for module i915
W: Possible missing firmware /lib/firmware/i915/tgl_huc.bin for module i915
W: Possible missing firmware /lib/firmware/i915/dg1_guc_70.bin for module i915
W: Possible missing firmware /lib/firmware/i915/tgl_guc_70.bin for module i915
W: Possible missing firmware /lib/firmware/i915/adlp_guc_70.bin for module i915
W: Possible missing firmware /lib/firmware/i915/dg2_guc_70.bin for module i915
W: Possible missing firmware /lib/firmware/i915/dg2_dmc_ver2_07.bin for module i915

[    7.837567] iwlwifi 0000:00:14.3: firmware: failed to load iwl-debug-yoyo.bin (-2)

# download
# /usr/lib/firmware/rtl_nic
# or /lib/firmware/rtl_nic
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/rtl_nic/rtl8156b-2.fw
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/rtl_nic/rtl8156a-2.fw
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/rtl_nic/rtl8153c-1.fw
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/rtl_nic/rtl8153b-2.fw
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/rtl_nic/rtl8153a-4.fw
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/rtl_nic/rtl8153a-3.fw
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/rtl_nic/rtl8153a-2.fw

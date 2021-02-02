ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
echo -e '\nen_US.UTF-8 UTF-8' >> /etc/locale.gen
echo -e '\nzh_CN.UTF-8 UTF-8' >> /etc/locale.gen
locale-gen
echo 'LANG=zh_CN.UTF-8' > /etc/locale.conf

echo 'HZPC' > /etc/hostname
echo -e '\n127.0.0.1 localhost' > /etc/hosts
echo -e '\n::1 localhost' > /etc/hosts
echo -e '\n127.0.1.1 HZPC.localdomain HZPC' /etc/hosts

echo 'Now set the root password'
passwd

useradd -m -G wheel -s /bin/bash hz
echo 'Now set the user password'
passwd hz

EDITOR=vim visudo

systemctl enable sddm

echo 'Now you can exit, umount and reboot'

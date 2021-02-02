systemctl stop reflector.service
echo 'Server = file:///run/myrepo/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist
pacman -Sy
pacstrap /mnt base base-devel linux linux-firmware vim amd-ucode bash-completion xorg xorg-drivers adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts plasma-meta konsole dolphin kate apper chromium mpv
genfstab -U /mnt > /mnt/etc/fstab
cat /mnt/etc/fstab
echo 'Now please arch-chroot'

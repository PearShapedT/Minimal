Notes
=====

 + Run on a freshly installed server under root!
 + Make sure you don't rely on sudo, you'll get locked out as it will be wiped during the cleaning process!
 + So make the following changes first
		`# sudo vipw`
		change line
		`root:x:0:0:root:/root:/bin/bash`
		to
		`root::0:0:root:/root:/bin/bash`
		after this change reboot Raspberry Pi and after boot,enter root as username,press enter and you will have root access.After this change root password and you can now login directly as root.

Compatibility
=============

**Operating Systems:**

 + Raspbian 7 (wheezy) rpi

**Platforms:**

 + RaspberryPi

Download
========

Download the script with the following command:

	cd ~; wget --no-check-certificate -O minimal.tar.gz http://www.github.com/PearShapedT/Minimal/tarball/master; tar zxvf minimal.tar.gz; cd *Minimal*

Instructions
============

You must run this script with options. They are outlined below:

 + For a minimal Dropbear based install: `bash minimal.sh dropbear`
 + For a minimal OpenSSH based install: `bash minimal.sh ssh`
 + To install extra packages defined in the extra file: `bash minimal.sh extra`
 + To set the clock, clean files and create a user: `bash minimal.sh configure`

Credits
=======

 + cedr @ daIRC: General Help
 + DPKG Cleaning: http://www.coredump.gr/linux/debian-package-list-backup-and-restore/
 + miTgiB @ daIRC: Script Help
 + SSH Limiting: http://www.hostingfu.com/article/ssh-dictionary-attack-prevention-with-iptables/

Items added by extra
--------------------
axel
bwm-ng
curl
htop
ntp
p7zip-full
psmisc
python
rar
rsnapshot
rsync
screen
unrar
unzip
zip

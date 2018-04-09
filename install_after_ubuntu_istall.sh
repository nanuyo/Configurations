sudo apt install -y openssh-server

sudo apt install -y samba
sudo smbpasswd -a hjpark
sudo cp /etc/samba/smb.conf ~
sudo gedit /etc/samba/smb.conf
#[files]
#	comment = hj ims pc
#	path = /home/hjpark
#	writeable = yes
#	browseable = yes
#	valid users = hjpark, root

sudo service smbd restart

sudo apt-get install nfs-common nfs-kernel-server portmap
chmod 777 /home/hjpark/
sudo gedit /etc/exports 
#/home/hjpark 39.118.159.18 (rw,all_squash,async)



#On the client
#mount -t nfs 211.238.111.124:/home/hjpark /mnt

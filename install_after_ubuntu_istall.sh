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

sudo apt-get install -y nfs-common nfs-kernel-server portmap
chmod 777 /home/hjpark/
sudo gedit /etc/exports 
#/home/hjpark 39.118.159.18 (rw,all_squash,async)



#On the client
#sudo mount -t nfs 211.238.111.124:/home/hjpark /mnt
#sudo mount -t nfs 192.168.0.250:/imslab ./nfs-ims-file-server/


sudo apt install -y fslint
sudo apt install -y filezilla
sudo apt install -y git
git config --global user.email "hjparkg71@gmail.com"
git config --global user.name "hjpark"


#Ubuntu software 에서
# guvcview 설치

#nvidia driver 설치
sudo apt-get install -y nvidia-352

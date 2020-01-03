#!/bin/bash
# Comprobar si existen los puntos de montaje
if [ mountpoint -q "/mnt/cifswindows" ] && [ mountpoint -q "/mnt/ftp" ];
then
	echo "Unidades compartidas montadas = OK"
else
	mount -t cifs //IP/COMPARTIDA /mnt/cifswindows -o username=user_cifs,password=password_cifs,domain=local
	# Monta el recurso con usuario, grupo y permisos específicos 740
	mount -t cifs //IP/COMPARTIDA/FTP /mnt/ftp -o username=user_cifs,password=password_cifs,domain=local,uid=user_linux,gid=user_linux,file_mode=0740,dir_mode=0740
fi

# MacOS
# mount -t smbfs '//user:password@ip_dns_hostname/path' /Volumes/compartida
# umount /Volumes/compartida

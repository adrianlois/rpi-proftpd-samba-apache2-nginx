# RaspberryPi-ProFTPD-Apache2-Samba

Desde una red Windows se compartirá un recurso a través de CIFS el cual posteriormente se montará en un sistema Ubuntu Server instalado en una RPI.

- **samba**: se compartirá unos recursos en la red los cuales se montarán en un directorio local con acceso anónimo a uno de ellos (cifswindows).
- **proftpd**: Se creará un usuario local enjaulado en un directorio home que será el recurso compartido ftp montando en local. 
- **apache2**: Sería la misma idea que proftpd pero web como forma de visualización y acceso, se restringirá el uso a un solo usuario con password. El contenido sería el recurso compartido ftp montando en local.
- **assets**: Líneas de configuración de varios ficheros y bash scripts
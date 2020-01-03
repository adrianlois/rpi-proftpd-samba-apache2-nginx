### Configuración apache2

- **000-default.conf**: Configuración VirtualHost, predeterminar el directorio ftp como raíz y restringir el acceso a un solo usuario.

- **apache2.conf**: Agregar dos directivas para ocultar la info del servidor Apache2 que se muestra en el "Index Of /"

#### Módulos necesarios

*Listar módulos habilitados*
```
apache2 -M
```

*Listar módulos disponibles*
```
ls /etc/apache2/mods-available/
```

*Habilitar módulos*
```
a2enmod auth_basic
a2enmod authn_file
a2enmod authz_user
a2enmod authn_core
a2enmod authz_core
```

#### Crear enlace simbólico
```
ln -s /mnt/ftp /var/www/ftp
```

#### Crear fichero password para el usuario que tendrá acceso
```
htpasswd -c /var/www/htpasswd user
```

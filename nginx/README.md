### Configuración apache2

- **default**: Configuración del fichero "VirtualHost", predeterminar el directorio ftp como raíz y restringir el acceso por autenticación a un usuario.

- **nginx.conf**: Agregar dos directivas para ocultar la info del servidor Nginx"

#### Instalar nginx-extras

Extensiones necesarias para las directivas aplicadas en el fichero nginx.conf.

```
sudo apt install -y nginx-extras
```

#### Directivas default (VirtualHost)

Restringir el acceso a un usuario.
```
auth_basic "Acceso restringido";
auth_basic_user_file /etc/nginx/.htpasswd;
```

Procesar las solicitudes que terminan con barra diagonal /, es necesario para mostrar un "list directory".
```
autoindex on;
autoindex_exact_size off;
```

#### Crear enlace simbólico
```
ln -s /mnt/ftp /var/www/ftp
```

#### Crear fichero password para el usuario que tendrá acceso

Podemos usar el mismo fichero que apache2 (instalando las apache2-utils). 

Otra opción es crear el fichero mediante OpenSSL.
```
sudo sh -c "echo -n 'usuario:' >> /etc/nginx/.htpasswd"
sudo sh -c "openssl passwd -apr1 >> /etc/nginx/.htpasswd"
```

#### Habilitar servicio nginx en el inicio del sistema y reiniciarlo
```
systemctl enable nginx
systemctl restart nginx
```

### Configuración proftpd

- **proftpd.conf**:	Limita el acceso a un solo usuario enjaulado en ese directorio home el cual será "/mnt/ftp".

- **tls.conf**: Configura el certificado SSL en el servidor con modo de conexión FTPES (FTP explícito).

- **generar-certificado-autofirmado.sh**: Crea el directorio /etc/proftpd/ssl y genera los certificados autofirmados con OpenSSL estableciendo una conexión segura hacia servidor FTP.

**Habilitar servicio ProFTPD**

- *Añadir al PATH.*
```
export PATH=$PATH:/lib/systemd/
```

- *Habilitar el servicio de proftpd con inicio automático después de reiniciar el sistema.*
```
systemctl enable proftpd
```
o también
```
/lib/systemd/systemd-sysv-install enable proftpd
```

- *Reiniciar servicio proftpd.*
```
systemctl restart proftpd
systemctl status proftpd
```

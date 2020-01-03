# Crea directorio donde se almacerán los certificados para la conexión segurida FTP con proftpd.
mkdir /etc/proftpd/ssl
# Genera certificados con OpenSSL
openssl req -new -x509 -days 365 -nodes -out /etc/proftpd/ssl/proftpd.cert.pem -keyout /etc/proftpd/ssl/proftpd.key.pem

#!/bin/bash

useradd -m -d /var/www/html ${FTP_USER}

echo "${FTP_USER}:${FTP_PASSWORD}" | chpasswd

cat << EOF > /etc/vsftpd.conf
listen=YES
listen_ipv6=NO
connect_from_port_20=YES
anonymous_enable=NO
local_enable=YES
write_enable=YES
chroot_local_user=YES
allow_writeable_chroot=YES
secure_chroot_dir=/var/run/vsftpd/empty
pam_service_name=vsftpd
pasv_enable=YES
pasv_min_port=21000
pasv_max_port=21010
user_sub_token=${FTP_USER}
local_root=/var/www/html
EOF

exec "$@"
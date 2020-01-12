# Cobbler 2.8.5 with dhcpd, tftpd based on CentOS 7.7 + systemd enabled.

Edit files based on your needs:

cobbler_settings
dhcpd.conf


Run container:

docker run --privileged --name mycobbler -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v /var/lib/cobbler:/var/lib/cobbler -v /var/lib/cobbler:/var/lib/tftpboot -v /var/lib/cobbler:/var/www/cobbler --net host -d cobbler-c7

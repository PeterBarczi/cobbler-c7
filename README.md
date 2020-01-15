# Cobbler 2.8.5 with web GUI, dhcpd, tftpd based on CentOS 7.7 + systemd enabled.

## 1. Edit files based on your needs:

> cobbler_settings

> dhcp.template

## 2. Prepare configs in dirs which will be bound to container:

> /var/lib/cobbler

> /var/lib/tftpboot

> /var/www/cobbler


## 3. Run container:

docker run --privileged --name mycobbler -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v /var/lib/cobbler:/var/lib/cobbler -v /var/lib/cobbler:/var/lib/tftpboot -v /var/lib/cobbler:/var/www/cobbler --net host -d cobbler-c7

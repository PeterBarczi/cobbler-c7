# Cobbler 2.8.5 with web GUI, dhcpd, tftpd based on CentOS 7.7 + systemd enabled.



########################## Create Container via image ##################################
## 1. Edit files based on your needs:

> cobbler_settings

> dhcp.template

## 2. Prepare configs in dirs which can be bound to container:

> /var/lib/cobbler

> /var/lib/tftpboot

> /var/www/cobbler


## 3. Run container:

docker run --privileged --name mycobbler -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v /var/lib/cobbler:/var/lib/cobbler -v /var/lib/cobbler:/var/lib/tftpboot -v /var/lib/cobbler:/var/www/cobbler --net host -d cobbler-c7





########################## Create Container via compose file ###############################

## 1. Downlod docke-compose.yml file

## 2. Edit config files based on you needs (at least IP variable needs to be adjusted according to you environment)
- cobbler_settings
- dhcp.template

## 3. RUN docker-compose

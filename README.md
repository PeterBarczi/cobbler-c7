# Cobbler 2.8.5 with web GUI, dhcpd, tftpd based on CentOS 7.7 + systemd enabled.


# OPTION A
## Create Container via image 
### 1. Edit files according to your needs:
```
cobbler_settings
dhcp.template
```
### 2. Prepare configs in dirs which can be bound to container:
```
/var/lib/cobbler
/var/lib/tftpboot
/var/www/cobbler
```

### 3. Run container:
```
docker run --privileged --name mycobbler -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v /var/lib/cobbler:/var/lib/cobbler -v /var/lib/cobbler:/var/lib/tftpboot -v /var/lib/cobbler:/var/www/cobbler --net host -d cobbler-c7
```



# OPTION B
## Create Container via the compose file

### 1. Downlod docker-compose.yml file

### 2. Edit config files based on you needs 
NOTE: at least IP variable needs to be adjusted according to you environment in:
- cobbler_settings
- dhcp.template

### 3. RUN docker-compose

### 4. Access WEB Cobbler
```
https://YOUR_IP/cobbler_web
```
Login credentials: cobbler/cobbler

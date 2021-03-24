FROM centos/systemd

# Install Packages for Cobbler
RUN yum update -y
RUN yum install -y epel-release
RUN yum install -y dhcp cobbler cobbler-web dnsmasq syslinux pykickstart mod_python tftp tftp-server fence-agents cman xinetd python-pygments vim net-tools

# Edit Configs
RUN sed -i '/disable/s/yes/no/' /etc/xinetd.d/tftp

# Deploy Configs
#ADD dhcpd.conf /etc/dhcp/
ADD dhcp.template /etc/cobbler/
ADD cobbler_settings /etc/cobbler/settings

# Enable Services
RUN systemctl enable httpd
RUN systemctl enable cobblerd
RUN systemctl enable dhcpd
RUN systemctl enable xinetd

# Expose Ports
# httpd
EXPOSE 80
EXPOSE 443
# dhcpd
EXPOSE 67/udp
# tftpd
EXPOSE 69/udp

CMD ["/usr/sbin/init"]

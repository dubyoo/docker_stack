FROM centos
RUN yum install -y rsyslog net-tools libnl3 iptables tcpdump
COPY . .
ENTRYPOINT ["/usr/sbin/init"]

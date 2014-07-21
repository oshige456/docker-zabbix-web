FROM    centos:centos6
MAINTAINER      oshige456
RUN     yum update -y
RUN     yum install httpd -y
RUN     yum install http://repo.zabbix.com/zabbix/2.2/rhel/6/x86_64/zabbix-release-2.2-1.el6.noarch.rpm -y
RUN     yum install zabbix-server-mysql zabbix-web-mysql -y

EXPOSE  80
CMD     ["/usr/sbin/httpd","-D","FOREGROUND"]


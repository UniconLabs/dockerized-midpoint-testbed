FROM unicon/midpoint:latest

RUN yum update -y \
    && yum install -y mysql \
    && yum clean all

ADD http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.42/mysql-connector-java-5.1.42.jar /opt/tomcat/lib

COPY config.xml /root/midpoint/
COPY mysql-3.6-all.sql /
COPY startup.sh /usr/local/bin

RUN chmod +x /usr/local/bin/*

CMD startup.sh
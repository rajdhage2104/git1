FROM centos:7
RUN yum install java-openjdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.96/bin/apache-tomcat-8.5.96.tar.gz /opt/
WORKDIR /opt/
RUN tar -xzf /apache-tomcat-8.5.96.tar.gz -C /opt
WORKDIR /opt/apache-tomcat-8.5.96
RUN ls /opt/apache-tomcat-8.5.96
CMD [ "/opt/apache-tomcat-8.5.96/bin/catalina.sh", "run" ]